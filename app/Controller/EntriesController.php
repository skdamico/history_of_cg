<?php

class EntriesController extends AppController
{

    public $uses = array('Entry', 'Tag', 'EntryTag', 'EntryStory', 'Connection');
    public $helpers = array('Like.Like', 'Html');

    function beforeFilter()
    {
        parent::beforeFilter();

        $this->Auth->allow('view', 'get_by_phrase', 'not_found', 'not_published');
    }

    public function view($slug = null)
    {
        $entry = $this->Entry->find('first', array(
            'conditions' => array(
                'Entry.slug' => $slug,
            ),
            'contain' => array(
                'Category' => array(
                    'fields' => array('Category.category')
                )
            )
        ));

        // if not found, redirect to not found page
        if (empty($entry)) {
            $this->redirect(array('action' => 'not_found', $slug));
        } else if ($entry['Entry']['published'] == 0) {
            $this->redirect(array('action' => 'not_published', $entry['Entry']['slug']));
        }

        // Get all published stories
        $stories = $this->EntryStory->find('all', array(
            'conditions' => array(
                'EntryStory.entry_id' => $entry['Entry']['id']
            ),
            'contain' => array(
                'Story' => array(
                    'conditions' => array('Story.published' => 1),
                    'StoryType' => array(
                        'fields' => array('StoryType.name')
                    )
                )
            )
        ));

        $can_like = $this->Entry->isLikedBy(intval($entry['Entry']['id']), intval($this->Auth->user('id')));

        // work around to get Tag to work with the aliased classes Entry1 and Entry2
        $this->Connection->Entry2->bindModel(
            array(
                'hasAndBelongsToMany' => array(
                    'Tag' => array(
                        'className' => 'Tag'
                    )
                )
            )
        );
        // Get all connections made by this entry
        $connections_1 = $this->Connection->find('all', array(
            'conditions' => array(
                'Connection.entry_id_1' => $entry['Entry']['id'],
            ),
            'contain' => array(
                'Entry2' => array(
                    'id',
                    'name',
                    'slug',
                    'Category' => array(
                        'category'
                    ),
                    'Tag' => array(
                        'name',
                    )
                )
            )
        ));

        $this->Connection->Entry1->bindModel(
            array(
                'hasAndBelongsToMany' => array(
                    'Tag' => array(
                        'className' => 'Tag'
                    )
                )
            )
        );
        // Get all connections made by other entries
        $connections_2 = $this->Connection->find('all', array(
            'conditions' => array(
                'Connection.entry_id_2' => $entry['Entry']['id'],
            ),
            'contain' => array(
                'Entry1' => array(
                    'id',
                    'name',
                    'slug',
                    'Category' => array(
                        'category'
                    ),
                    'Tag' => array(
                        'name',
                    )
                )
            )
        ));

        $tags = array();
        $connections = array();

        // Merge both sides of the circular connection into many 'Entry'
        foreach ($connections_1 as $c_1) {
            $display = null;
            $display = $this->find_display_image($c_1['Entry2']['id']);

            $t = $this->get_tag_names($c_1['Entry2']['Tag'], $c_1['Entry2']['Category']['category']);
            $tags = array_merge($tags, $t['extra']);

            $connections[] = array('Entry' => $c_1['Entry2'], 'tags' => $t['simple'], 'connection_display' => $display['connection_display'], 'connection_display_type' => $display['connection_display_type'], 'Connection' => array('id' => $c_1['Connection']['id']));
        }
        foreach ($connections_2 as $c_2) {
            $display = null;
            $display = $this->find_display_image($c_2['Entry1']['id']);

            $t = $this->get_tag_names($c_2['Entry1']['Tag'], $c_2['Entry1']['Category']['category']);
            $tags = array_merge($tags, $t['extra']);

            $connections[] = array('Entry' => $c_2['Entry1'], 'tags' => $t['simple'], 'connection_display' => $display['connection_display'], 'connection_display_type' => $display['connection_display_type'], 'Connection' => array('id' => $c_2['Connection']['id']));
        }

        // Get only the unique tags and sort them alphabetical
        $tags = $this->array_unique_tags($tags);

        function cmp($a, $b)
        {
            return strnatcmp($a['name'], $b['name']);
        }

        usort($tags, 'cmp');

        $this->set(compact('connections'));
        $this->set(compact('stories'));
        $this->set(compact('entry'));
        $this->set(compact('tags'));
        $this->set(compact('can_like'));

        $this->set('title_for_layout', $entry['Entry']['name']);
    }

    private function array_unique_tags($t_arr)
    {
        $seen = array();
        $tmp = array();

        foreach ($t_arr as $t) {
            if (!in_array($t['name'], $seen)) {
                $tmp[] = $t;
                $seen[] = $t['name'];
            }
        }
        return $tmp;
    }

    private function get_tag_names($t_arr, $cat)
    {
        $t = array();
        $simple = array();

        foreach ($t_arr as $tmp) {
            $t[] = array('name' => $tmp['name'], 'category' => $cat);
            $simple[] = $tmp['name'];
        }

        return array('simple' => $simple, 'extra' => $t);
    }

    /*
     * find a front display image from the list of stories that are images
     * if there are no images, use a default local image   
     */
    private function find_display_image($id = null)
    {
        if (empty($id)) {
            return null;
        }

        // Temporarily unbind the Connection relationship
        $this->Entry->unbindModel(array(
            'hasAndBelongsToMany' => array('Connection')
        ));

        // We want this query to get a random Story
        $this->Entry->bindModel(array(
            'hasAndBelongsToMany' => array(
                'Story' => array(
                    'recursive' => 0,
                    'order' => 'RAND()',
                    'limit' => 1,
                    'conditions' => array('Story.story_type_id = 2', 'Story.published = 1'),
                    'fields' => 'Story.url'
                )
            )
        ));

        // Find the story
        $story = $this->Entry->find('first', array(
            'conditions' => array('Entry.id' => $id),
            'fields' => array('Entry.id', 'Entry.description'),
            'contain' => array(
                'Story' => array(
                    'fields' => 'Story.url'
                )
            )
        ));

        if (!empty($story) && !empty($story['Story'])) {
            return array('connection_display' => $story['Story'][0]['url'],
                'connection_display_type' => 'image');
        } else {
            return array('connection_display' => $story['Entry']['description'],
                'connection_display_type' => 'text');
        }
    }

    public function not_found($slug = null)
    {
        $this->set(compact('slug'));
    }

    public function not_published($slug = null)
    {
        if (!empty($slug)) {
            $entry = $this->Entry->find('first', array(
                'conditions' => array(
                    'Entry.slug' => $slug,
                ),
                'recursive' => 0,
                'fields' => array('Entry.name', 'Entry.slug', 'Entry.id')
            ));

            $this->set(compact('entry'));
        }
    }


    public function get_by_phrase($type = null, $s = null)
    {
        // do not render any views for this action
        $this->autoRender = false;

        // check if a querystring was passed in
        if (!isset($type) && isset($_GET['t'])) {
            $type = $_GET['t'];
        }
        if (!isset($s) && isset($_GET['q'])) {
            $s = $_GET['q'];
        }

        if (!empty($s)) {
            $conditions = array('Entry.name LIKE' => '%' . $s . '%');
            if ($type != 'all') {
                $conditions['Category.category'] = $type;
            }

            // find all tags that are approved and like given string
            $results = $this->Entry->find('all', array(
                'limit' => 10,
                'recursive' => 0,
                'fields' => array('Entry.id', 'Entry.name', 'Entry.slug', 'Category.category'),
                'conditions' => $conditions
            ));

            $tmp = array();
            foreach ($results as $r) {
                $tmp[] = array('id' => $r['Entry']['id'], 'name' => $r['Entry']['name'], 'slug' => $r['Entry']['slug'], 'category' => $r['Category']['category']);
            }
            echo json_encode($tmp);
        }

    }

    public function get($id = null, $type = null)
    {
        $this->autoRender = false;

        if (!empty($id) && !empty($type)) {
            $tmp = array();

            if ($type == "tags") {
                $tmp = $this->EntryTag->find('all', array(
                    'fields' => array(
                        'Tag.name',
                        'Tag.id'
                    ),
                    'conditions' => array(
                        'EntryTag.entry_id' => $id
                    ),
                    'recursive' => 0
                ));

                echo json_encode($tmp);
            }
        }
    }

    function saveTags($entry_id, $tags)
    {
        // delete all previous EntryTag for this entry
        $this->EntryTag->deleteAll(array('EntryTag.entry_id' => $entry_id), false);

        // Add the tags and relationships one by one
        foreach ($tags as $tag) {
            $this->EntryTag->create();

            $entryTag = array();
            $entryTag['EntryTag']['entry_id'] = $entry_id;

            // check if tag is a number, if so it most likely exists
            if (is_numeric($tag)) {
                $entryTag['EntryTag']['tag_id'] = $tag;
            } else {
                // Get rid of single quotes and trim whitespace from tag
                $tag = preg_replace("/(^\'|\'\z)/", "", $tag);
                $tag = trim($tag);

                // check to make sure tag is not in the DB
                $result = $this->Tag->find('first', array(
                    'conditions' => array(
                        'Tag.name' => $tag
                    ),
                    'recursive' => 0
                ));

                if (!empty($result)) {
                    // tag exists!
                    $entryTag['EntryTag']['tag_id'] = $result['Tag']['id'];
                } else {
                    // tag does not exist, create it
                    $entryTag['Tag']['name'] = $tag;
                }
            }

            // finally save the relationship (and tag)
            $this->EntryTag->saveAll($entryTag);
        }
    }

    public function add($name = null)
    {
        if ($this->request->is('post')) {
            // Save Entry first
            $this->Entry->create();
            $entry = array();
            $entry['Entry'] = $this->request->data['Entry'];
            $entry['Entry']['user_id'] = $this->Auth->User('id');
            if (!empty($entry['Entry']['date_1'])) {
                $entry['Entry']['date_1'] = date('Y-m-d', strtotime($this->request->data['Entry']['date_1']));
            }
            $entry['Entry']['slug'] = $this->create_slug($entry['Entry']['name']);


            // Save the entry
            if ($this->Entry->save($entry)) {
                // Now get Entry id
                $entry_id = $this->Entry->id;

                // Split tags from comma delimited list
                $tags = array();
                $tags = explode(',', $this->request->data['tags']);

                $this->saveTags($entry_id, $tags);

                // Save the source if any
                // if($entry['Source']['name']) {
                //     $this->saveSource($entry_id, $entry['Source']);
                // }

                // Get published = 0 (unpublish), 1 (publish), or null (draft)
                $published = isset($this->request->data['Entry']['published']) ? $this->request->data['Entry']['published'] : null;

                // if we are publishing/unpublishing show a different message
                if ($published == "1") {
                    $this->Session->setFlash(__("'" . $this->request->data['Entry']['name'] . "' was saved and published"));
                } else {
                    $this->Session->setFlash(__('\'' . $this->request->data['Entry']['name'] . '\' has been saved'));
                }

                $this->redirect(array('action' => 'edit', $entry['Entry']['slug']));
            } else {
                $this->Session->setFlash(__('The entry could not be saved'));
            }
        }

        $entry = array();
        $entry['Entry'] = array('name' => $name, 'homepage_url' => '', 'category_id' => '', 'description' => '', 'date_1' => '', 'date_2' => '', 'id' => '', 'published' => 0, 'source_name' => '', 'source_url' => '');
        $this->set(compact('entry'));

        $this->set('title_for_layout', 'Add an entry');
    }

    public function edit($id = null)
    {
        if (!$id && empty($this->request->data)) {
            $this->redirect(array('action' => 'add'));
        }

        if ($this->request->is('post') || $this->request->is('put')) {

            // update entry

            // check id first
            if (is_numeric($id)) {
                $this->Entry->id = $id;
            } else {
                $id = $this->request->data['Entry']['id'];
                $this->Entry->id = $id;
            }

            // have a user add the entry if not
            if (!$this->Entry->exists()) {
                throw NotFoundException('Invalid id');
            }

            $e = $this->request->data;

            // check if date or source is checked
            // make sure to rid the source or date accordingly
            if (!isset($e['source_selected'])) {
                $e['Entry']['source_name'] = null;
                $e['Entry']['source_url'] = null;
            }

            if (!isset($e['date_selected'])) {
                $e['Entry']['date_2'] = null;
            }

            // check for slug, if nothing, recreate one
            if (empty($e['Entry']['slug'])) {
                $e['Entry']['slug'] = $this->create_slug($e['Entry']['name']);
            }

            // save the updated entry
            if ($this->Entry->save($e)) {
                // Split tags from comma delimited list
                $tags = array();
                $tags = explode(',', $this->request->data['tags']);

                $this->saveTags($id, $tags);

                // Get published = 0 (unpublish), 1 (publish), or null (draft)
                $published = isset($this->request->data['Entry']['published']) ? $this->request->data['Entry']['published'] : null;

                // if we are publishing/unpublishing show a different message
                if ($published == "1") {
                    $this->Session->setFlash(__("'" . $this->request->data['Entry']['name'] . "' was published"));
                } else if ($published == "0") {
                    $this->Session->setFlash(__("'" . $this->request->data['Entry']['name'] . "' was unpublished"));
                } else {
                    $this->Session->setFlash(__("'" . $this->request->data['Entry']['name'] . "' has been updated"));
                }
            } else {
                $this->Session->setFlash(__("The entry could not be updated"));
            }
        }

        // Get data for population
        //
        // if id isn't a number, find the id
        if (is_numeric($id)) {
            // fetch the entry and render
            $entry = $this->Entry->find('first', array(
                'conditions' => array('Entry.id' => $id),
                'recursive' => 0
            ));

            // if not found, redirect to add page
            if (empty($entry)) {
                $this->redirect(array('action' => 'add'));
            }
        } else {
            // its a slug!
            $entry = $this->Entry->find('first', array(
                'conditions' => array(
                    'Entry.slug' => $id
                ),
                'recursive' => 0
            ));

            // if not found, redirect to add page
            if (empty($entry)) {
                $this->redirect(array('action' => 'add'));
            }
        }

        // Get all stories
        $stories = $this->EntryStory->find('all', array(
            'conditions' => array(
                'EntryStory.entry_id' => $entry['Entry']['id'],
                'EntryStory.user_id' => $this->Auth->user('id')
            ),
            'contain' => array(
                'Story' => array(
                    'Author' => array(
                        'fields' => array('Author.name')
                    ),
                    'StoryType' => array(
                        'fields' => array('StoryType.name')
                    )
                )
            )
        ));

        // Get all connections made by this entry
        $connections_1 = $this->Connection->find('all', array(
            'conditions' => array(
                'Connection.entry_id_1' => $entry['Entry']['id'],
            ),
            'contain' => array(
                'Entry2' => array(
                    'id',
                    'name',
                    'Category' => array(
                        'category'
                    )
                )
            )
        ));

        // Get all connections made by other entries
        $connections_2 = $this->Connection->find('all', array(
            'conditions' => array(
                'Connection.entry_id_2' => $entry['Entry']['id'],
            ),
            'contain' => array(
                'Entry1' => array(
                    'id',
                    'name',
                    'Category' => array(
                        'category'
                    )
                )
            )
        ));


        $connections = array();

        // Merge both sides of the circular connection into many 'Entry'
        foreach ($connections_1 as $c_1) {
            $connections[] = array('Entry' => $c_1['Entry2'], 'Connection' => array('id' => $c_1['Connection']['id']));
        }
        foreach ($connections_2 as $c_2) {
            $connections[] = array('Entry' => $c_2['Entry1'], 'Connection' => array('id' => $c_2['Connection']['id']));
        }

        $this->set(compact('connections'));
        $this->set(compact('stories'));
        $this->set(compact('entry'));

        $this->set('title_for_layout', 'Edit - ' . $entry['Entry']['name']);
    }

}
