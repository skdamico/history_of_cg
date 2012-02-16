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
     * add a story to an entry
     */
    public function add_or_edit() {
        $this->autoRender = false;

        if($this->RequestHandler->isAjax()) {
            Configure::write('debug', 0);
        }
        if (!empty($this->request->data) && $this->request->is('post')) {

            $story_id = $this->request->data['Story']['id'];
            // update the entry
            if(!empty($story_id)) {

              $this->Story->id = $story_id;
              $title = $this->request->data['Story']['title'];
              if($this->Story->exists()) {
                  // save the updated entry
                  if($this->Story->save($this->request->data)) {
                      echo json_encode(array('response'=>'The story \''.$title.'\' has been updated'));
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
                $story['Story']['story_type_id'] = 3;
                $story['Story']['date'] = date('Y-m-d', strtotime($this->request->data['Story']['date']));

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
                        echo json_encode(array('id'=>$story_id, 'response'=>'The story \''.$title.'\' has been added'));
                    }
                    else {
                        echo json_encode(array('response'=>'Sorry the story \''.$title.'\' could not be added'));
                    }
                }
            }
        }
    }
}
