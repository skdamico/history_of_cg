<?php

class HomeController extends AppController {

    public $uses = array('Entry','Story', 'EntryStory');

    function beforeFilter() {
        parent::beforeFilter();

        $this->Auth->allow('index');
    }

    public function index() {
        $this->layout = 'home';
        $this->set('allEntries', $this->Entry->find('list', array('order' => 'Entry.created')));
        $this->set('allStories', $this->EntryStory->find('all', array(
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
                                         )));
    }
}
