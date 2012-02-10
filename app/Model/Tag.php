<?php

class Tag extends AppModel {
  public $name = 'Tag';

  public $hasMany = array(
      'EntryTag' => array(
          'className' => 'EntryTag',
          'foreignKey' => 'tag_id'
      )
  );
}
