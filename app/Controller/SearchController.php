<?php

class SearchController extends AppController {

    public $uses = array('Entry');

    function beforeFilter() {
        parent::beforeFilter();

        $this->Auth->allow('entries');
    }

    public function entries( $query=null ) {
        if(empty($query)) {
            $this->set('query', null);
            $this->set('results', null);
            return;
        }

        $q_arr = explode('+', $query);

        $c = array();
        foreach($q_arr as $q) {
            $c[] = array('Entry.name LIKE' => '%'.$q.'%');
        }
        $conditions = array('OR' => $c);

        $results = $this->Entry->find('all', array(
            'limit' => 10,
            'recursive' => 0,
            'fields' => array('Entry.id', 'Entry.slug', 'Entry.name', 'Category.category'),
            'conditions' => $conditions
        ));

        $this->set(compact('query'));
        $this->set(compact('results'));
    }
}
