<?php

class Source extends AppModel {
  public $name = 'Source';

  public $belongsTo = array(
    'Entry' => array(
      'className' => 'Entry',
      'foreignKey' => 'entry_id'
  ));
}
