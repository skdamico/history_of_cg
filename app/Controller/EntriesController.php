<?php

class EntriesController extends AppController {

    public $uses = array('Entry', 'Tag', 'EntryTag', 'EntryStory', 'Connection');

    function beforeFilter() {
        parent::beforeFilter();

        $this->Auth->allow('view', 'get_by_phrase');
    }

    public function view() {

    }

    public function get_by_phrase( $type = null, $s = null ) {
        // do not render any views for this action
        $this->autoRender = false;

        // check if a querystring was passed in
        if(!isset($type) && isset($_GET['t'])) {
            $type = $_GET['t'];
        }
        if(!isset($s) && isset($_GET['q'])) {
            $s = $_GET['q'];
        }

        if(!empty($s)) {
            $conditions = array('Entry.name LIKE' => '%'.$s.'%');
            if($type != 'all') {
                $conditions['Category.category'] = $type;
            }

            // find all tags that are approved and like given string
            $results = $this->Entry->find('all', array(
                'limit' => 10,
                'recursive' => 0,
                'fields' => array('Entry.id', 'Entry.name', 'Category.category'),
                'conditions' => $conditions
            ));

            $tmp = array();
            foreach( $results as $r) {
                $tmp[] = array('id' => $r['Entry']['id'], 'name' => $r['Entry']['name'], 'category' => $r['Category']['category']);
            }
            echo json_encode($tmp);
        }

    }

    public function get($id = null, $type = null) {
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

    function saveTags($entry_id, $tags) {
        // delete all previous EntryTag for this entry
        $this->EntryTag->deleteAll(array('EntryTag.entry_id' => $entry_id), false);

        // Add the tags and relationships one by one
        foreach($tags as $tag) {
            $this->EntryTag->create();

            $entryTag = array();
            $entryTag['EntryTag']['entry_id'] = $entry_id;

            // check if tag is a number, if so it most likely exists
            if(is_numeric($tag)) {
                $entryTag['EntryTag']['tag_id'] = $tag;
            }
            else {
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

                if(!empty($result)) {
                    // tag exists!
                    $entryTag['EntryTag']['tag_id'] = $result['Tag']['id'];
                }
                else {
                    // tag does not exist, create it
                    $entryTag['Tag']['name'] = $tag;
                }
            }

            // finally save the relationship (and tag)
            $this->EntryTag->saveAll($entryTag);
        }
    }

    public function add($name = null) {
        if ($this->request->is('post')) {
            // Save Entry first
            $this->Entry->create();
            $entry = array();
            $entry['Entry'] = $this->request->data['Entry'];
            $entry['Entry']['user_id'] = $this->Auth->User('id');
            if(!empty( $entry['Entry']['date_1'] )) {
              $entry['Entry']['date_1'] = date('Y-m-d', strtotime($this->request->data['Entry']['date_1']));
            }

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
                    $this->Session->setFlash(__("'".$this->request->data['Entry']['name']."' was saved and published"));
                }
                else {
                    $this->Session->setFlash(__('\''.$this->request->data['Entry']['name'].'\' has been saved'));
                }

                $this->redirect(array('action'=>'edit', $this->urlize($entry['Entry']['name'])));
            }
            else {
                $this->Session->setFlash(__('The entry could not be saved'));
            }
        }

        $entry = array();
        $entry['Entry'] = array('name' => $name, 'category_id' => '', 'description' => '', 'date_1' => '', 'date_2' => '', 'id' => '', 'published' => 0, 'source_name' => '', 'source_url' => '');
        $this->set(compact('entry'));
    }

    public function edit($id = null) {
        if (!$id && empty($this->request->data)) {
            $this->redirect(array('action'=>'add'));
        }

        if ($this->request->is('post') || $this->request->is('put')) {

            // update entry

            // check id first
            if (is_numeric($id)) {
                $this->Entry->id = $id;
            }
            else {
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
                    $this->Session->setFlash(__("'".$this->request->data['Entry']['name']."' was published"));
                }
                else if ($published == "0") {
                    $this->Session->setFlash(__("'".$this->request->data['Entry']['name']."' was unpublished"));
                }
                else {
                    $this->Session->setFlash(__("'".$this->request->data['Entry']['name']."' has been updated"));
                }
            }
            else {
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
            if(empty($entry)) {
                $this->redirect(array('action'=>'add'));
            }
        }
        else {
            // replace all underscores in name with spaces
            $tmp_id = $this->unUrlize($id);

            $entry = $this->Entry->find('first', array(
                'conditions' => array(
                    'Entry.name' => $tmp_id
                ),
                'recursive' => 0
            ));

            // if not found, redirect to add page
            if(empty($entry)) {
                $this->redirect(array('action'=>'add', $id));
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
        foreach( $connections_1 as $c_1) {
            $connections[] = array('Entry' => $c_1['Entry2'], 'Connection' => array('id' => $c_1['Connection']['id']));
        }
        foreach( $connections_2 as $c_2) {
            $connections[] = array('Entry' => $c_2['Entry1'], 'Connection' => array('id' => $c_2['Connection']['id']));
        }

        $this->set(compact('connections'));
        $this->set(compact('stories'));
        $this->set(compact('entry'));
    }

}
