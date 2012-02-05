<?php

class AboutController extends AppController {
  
  function beforeFilter() {
    parent::beforeFilter();

    $this->Auth->allow("index");
  }
}
