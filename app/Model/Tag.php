<?php

class Tag extends AppModel {
  public $name = 'Tag';
  public $actsAs = array('Containable');

  public $hasMany = array(
      'EntryTag' => array(
          'className' => 'EntryTag',
          'foreignKey' => 'tag_id'
      )
  );
}
