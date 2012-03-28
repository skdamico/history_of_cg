<?php

class AboutController extends AppController {
  
  function beforeFilter() {
    parent::beforeFilter();

    $this->Auth->allow("index");
  }

  public function index() {
    $this->set('title_for_layout', 'About');
  }
}
