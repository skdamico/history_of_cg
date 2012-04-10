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
            $this->set('message', null);
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

        $message = '';
        $num_results = sizeof($results);
        if($num_results < 1) {
            $message = "No results were found for '".str_replace('+', ' ', $query)."'";
        }
        else {
            $message = $num_results . " results were found for '". str_replace('+', ' ', $query) . "'";
        }


        $this->set(compact('query'));
        $this->set(compact('results'));
        $this->set(compact('message'));

        $this->set('title_for_layout', 'Search');
    }
}
