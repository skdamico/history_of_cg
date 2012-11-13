<?php

class HomeController extends AppController {

  function beforeFilter() {
    parent::beforeFilter();

    $this->Auth->allow('index');
  }

  public function index() {
    $this->layout = 'home';
    $this->set('allEntries', $this->Entry->find('all'));
  }
}
