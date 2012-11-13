<?php

class HomeController extends AppController {

    public $uses = array('Entry');

    function beforeFilter() {
        parent::beforeFilter();

        $this->Auth->allow('index');
    }

    public function index() {
        $this->layout = 'home';
        $this->set('allEntries', $this->Entry->find('list', array('order' => 'Entry.created')));
    }
}
