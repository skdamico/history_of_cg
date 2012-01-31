<?php

class Entry extends AppModel {
  public $name = 'Entry';

  public $belongsTo = array('User', 'Category', 'Location', 
    'Author' => array(
      'className' => 'Entry',
      'foreignKey' => 'author_id',
      'conditions' => array('Entry.Category.name' => 'story')
    )
  );

  public $hasMany = array('Source');

  public $hasAndBelongsToMany = array(
    'Relationship' => array(
      'joinTable' => 'relationships',
      'className' => 'Entry',
      'foreignKey' => 'entry_id_1',
      'associationForeignKey' => 'entry_id_2',
      'with' => 'Relationship'
    ),
    'Tag'
  );
}
