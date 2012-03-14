<?php

class StoriesController extends AppController {

    public $uses = array('Story', 'EntryStory');

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

    /*
     * delete a story
     */
    public function delete($id=null) {
        $this->autoRender = false;

        if($this->RequestHandler->isAjax()) {
            Configure::write('debug', 0);
        }

        // make sure the request is not GET or PUT
        if ($this->request->is('post')) {
            $this->Story->id = $id;
            if (!$this->Story->exists()) {
                echo json_encode(array('response' => 'Invalid story'));
                return;
            }
            // delete story, db is setup for EntryStory to cascade on delete
            if ($this->Story->delete()) {
                echo json_encode(array('response' => 'The story was deleted'));
            }
            else {
                echo json_encode(array('response' => 'The story was not deleted'));
            }
        }
    }

    /*
     * add a story to an entry
     */
    public function add_or_edit() {
        $this->autoRender = false;

        if($this->RequestHandler->isAjax()) {
            Configure::write('debug', 0);
        }

        if (!empty($this->request->data) && $this->request->is('post')) {

            // Get published = 0 (unpublish), 1 (publish), or null (draft)
            $published = isset($this->request->data['Story']['published']) ? $this->request->data['Story']['published'] : null;

            $story_id = $this->request->data['Story']['id'];
            // update the entry
            if(!empty($story_id)) {

                $this->Story->id = $story_id;
                $title = $this->request->data['Story']['title'];
                if($this->Story->exists()) {
                    $s = $this->request->data;

                    // make sure to rid the source if checkbox not selected
                    if (!isset($s['source_selected'])) {
                        $s['Story']['source_name'] = null;
                        $s['Story']['source_url'] = null;
                    }

                    // save the updated entry
                    if($this->Story->save($s)) {

                        // is this being published/unpublished?
                        if($published == "1") {
                            echo json_encode(array('publish'=>'published', 'response'=>'The story \''.$title.'\' was published'));
                        }
                        else if($published == "0") {
                            echo json_encode(array('publish'=>'unpublished', 'response'=>'The story \''.$title.'\' was unpublished'));
                        }
                        else {
                            echo json_encode(array('response'=>'The story \''.$title.'\' has been updated'));
                        }
                    }
                    else {
                        echo json_encode(array('response'=>'Sorry the story \''.$title.'\' could not be updated'));
                    }
                }
            }
            // Is this a new story?
            else {
                // Save Entry first
                $this->Story->create();
                $story = array();
                $story['Story'] = $this->request->data['Story'];
                $story['Story']['date'] = null;
                
                if(!empty( $this->request->data['Story']['date'] )) {
                    $story['Story']['date'] = date('Y-m-d', strtotime($this->request->data['Story']['date']));
                }

                $title = $this->request->data['Story']['title'];
                // Save the entry
                if ($this->Story->save($story)) {
                    // Now get Entry id
                    $story_id = $this->Story->id;

                    // Save the story relationship to entry
                    $tmp = array();
                    $tmp['EntryStory']['story_id'] = $story_id;
                    $tmp['EntryStory']['entry_id'] = $this->request->data['entry_id'];
                    $tmp['EntryStory']['user_id'] = $this->Auth->User('id');

                    $this->EntryStory->create();
                    if($this->EntryStory->save($tmp)) {
                        // is this being published/unpublished?
                        if($published == "1") {
                            echo json_encode(array('id'=>$story_id, 'publish'=>'published', 'response'=>'The story \''.$title.'\' was published'));
                        }
                        else if($published == "0") {
                            echo json_encode(array('id'=>$story_id, 'publish'=>'unpublished', 'response'=>'The story \''.$title.'\' was unpublished'));
                        }
                        else {
                            echo json_encode(array('id'=>$story_id, 'response'=>'The story \''.$title.'\' has been added'));
                        }
                    }
                    else {
                        echo json_encode(array('response'=>'Sorry the story \''.$title.'\' could not be added'));
                    }
                }
            }
        }
    }
}
