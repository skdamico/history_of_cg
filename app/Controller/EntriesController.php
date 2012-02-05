<?php

class EntriesController extends AppController {

  function beforeFilter() {
    parent::beforeFilter();

    $this->Auth->allow('index', 'view');
  }

  public function index() {

  }

  public function view() {

  }

  public function add() {

  }

  public function edit() {

  }
}
