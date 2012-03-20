<?php

class ConnectionsController extends AppController {
    public $uses = array('Connection', 'Entry', 'Tag', 'EntryTag', 'Category');


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
        $this->autoRender = false;

        if($this->RequestHandler->isAjax()) {
            Configure::write('debug', 0);
        }

        // make sure its a POST request with data given
        if (!empty($this->request->data) && $this->request->is('post')) {

            // test if new entry
            $entry_id = $this->request->data['entry_id'];
            $connection_id = $this->request->data['connection_id'];
            $connection_type = null;

            $needs_more_info = false;

            // find or save a new entry
            if(empty($connection_id)) {
                // test if in db
                $entry = $this->Entry->find('first', array(
                    'conditions' => array(
                        'Entry.name' => $this->request->data['Entry']['name']
                    ),
                    'recursive' => 0,
                    'fields' => array('Entry.*')
                ));

                if(!empty($entry['Entry']['id'])) {
                    $connection_id = $entry['Entry']['id'];
                }
                else if(!empty($this->request->data['Entry']['category_id']) && !empty($this->request->data['tags'])) {
                    // new entry stub needs to be created
                    $this->Entry->create();

                    $tmp = array();
                    $tmp['Entry'] = $this->request->data['Entry'];
                    $tmp['Entry']['user_id'] = $this->Auth->User('id');

                    if($this->Entry->save($tmp)) {
                        $connection_id = $this->Entry->id;

                        // Split tags from comma delimited list
                        $tags = array();
                        $tags = explode(',', $this->request->data['tags']);

                        $this->saveTags($connection_id, $tags);
                    }
                    else {
                        echo json_encode(array('response' => 'Sorry the entry could not be added at this time'));
                        return;
                    }
                }
                else {
                    $needs_more_info = true;
                }
            }


            if(!$needs_more_info) {
                // Save connection
                $this->Connection->create();
                $c = array();
                $c['Connection']['entry_id_1'] = $entry_id;
                $c['Connection']['entry_id_2'] = $connection_id;

                // Save the entry
                if ($this->Connection->save($c)) {
                    // Now get Entry id
                    $id = $this->Connection->id;

                    $category = $this->Entry->find('first', array(
                        'conditions' => array('Entry.id' => $connection_id),
                        'contain' => array(
                            'Category' => array('category')
                        )
                    ));

                    $connection_type = $category['Category']['category'];

                    echo json_encode(array('id'=>$id, 'type'=>$connection_type, 'response'=>'The connection has been added'));
                }
                else {
                    echo json_encode(array('response'=>'Sorry the connection could not be added at this time'));
                }
            }
            else {
                echo json_encode(array('more' => true));
            }
        }
    }

    public function delete($id=null) {
        $this->autoRender = false;

        if($this->RequestHandler->isAjax()) {
            Configure::write('debug', 0);
        }

        // make sure the request is not GET or PUT
        if ($this->request->is('post')) {
            $this->Connection->id = $id;
            if (!$this->Connection->exists()) {
                echo json_encode(array('response' => 'Invalid connection'));
                return;
            }
            if ($this->Connection->delete()) {
                echo json_encode(array('response' => 'The connection was deleted'));
            }
            else {
                echo json_encode(array('response' => 'Connection was not deleted'));
            }
        }
    }
}
