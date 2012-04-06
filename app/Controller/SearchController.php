<?php

class SearchController extends AppController {

    public $uses = array('Entry');

    function beforeFilter() {
        parent::beforeFilter();

        $this->Auth->allow('index');
    }

    public function index( $type, $query ) {
        if(empty($query)) {
            $this->set('results', null);
            return;
        }

        if(!empty($type) && $type == "entries") {
            $results = $this->Entry->find('all', array(
                'limit' => 10,
                'recursive' => 0,
                'fields' => array('Entry.id', 'Entry.name', 'Category.category'),
                'conditions' => array('Entry.name LIKE' => '%'.$query.'%')
            ));

            $this->set(compact('results'));
        }
    }
}
