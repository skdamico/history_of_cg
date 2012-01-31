<?php

class Location extends AppModel {
  public $name = 'Location';

  public $hasMany = array('Entry');
}
