<?php

class EntriesController extends AppController {

    public $uses = array('Entry', 'Tag', 'EntryTag');

    function beforeFilter() {
        parent::beforeFilter();

        $this->Auth->allow('index', 'view');
    }

    public function index() {

    }

    public function view() {

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

    public function add() {
        if ($this->request->is('post')) {
            // Save Entry first
            $this->Entry->create();
            $entry = array();
            $entry['Entry'] = $this->request->data['Entry'];
            $entry['Entry']['user_id'] = $this->Auth->User('id');
            $entry['Entry']['date_1'] = date('Y-m-d', strtotime($this->request->data['Entry']['date_1']));

            // Save the entry
            if ($this->Entry->save($entry)) {
                // Now get Entry id
                $entry_id = $this->Entry->id;

                // Split tags from comma delimited list
                $tags = array();
                $tags = explode(',', $this->request->data['tags']);

                $this->saveTags($entry_id, $tags);

                $this->Session->setFlash(__('\''.$this->request->data['Entry']['name'].'\' has been saved'));
                $this->redirect(array('action'=>'edit', str_replace(' ', '_', $entry['Entry']['name'])));
            }
            else {
                $this->Session->setFlash(__('The entry could not be saved'));
            }
        }

        $entry = array();
        $entry['Entry'] = array('name' => '', 'description' => '', 'date_1' => '', 'date_2' => '', 'id' => '');
        $entry['Category']['category'] = '';
        $this->set('entry');
    }

    public function edit($id = null) {
        if (!$id && empty($this->request->data)) {
            $this->redirect(array('action'=>'add'));
        }
        else if ($this->request->is('post') || $this->request->is('put')) {
            // update entry

            // check id first
            if (is_numeric($id)) {
                $this->Entry->id = $id;
            }
            else {
                $id = $this->request->data['Entry']['id'];
                $this->Entry->id = $id;
            }

            // does the entry exist?
            if (!$this->Entry->exists()) {
                throw new NotFoundException(__("Invalid entry"));
            }

            // save the updated entry
            if ($this->Entry->save($this->request->data)) {
                // Split tags from comma delimited list
                $tags = array();
                $tags = explode(',', $this->request->data['tags']);

                $this->saveTags($id, $tags);

                $this->Session->setFlash(__("'".$this->request->data['Entry']['name']."' has been updated"));
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
        }
        else {
            // replace all underscores in name with spaces
            $tmp_id = str_replace('_', ' ', $id);

            $entry = $this->Entry->find('first', array(
                'conditions' => array(
                    'Entry.name' => $tmp_id
                ),
                'recursive' => 0
            ));
        }

        $this->set(compact('entry'));
    }

}
