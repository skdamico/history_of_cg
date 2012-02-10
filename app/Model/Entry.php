<?php

class Entry extends AppModel {
  public $name = 'Entry';

  public $belongsTo = array('User', 'Category', 'Location');

  public $hasMany = array(
      'EntryTag' => array(
          'className' => 'EntryTag',
          'foreignKey' => 'entry_id',
  ));

  /*
  public $hasAndBelongsToMany = array(
    'Relationship' => array(
      'joinTable' => 'relationships',
      'className' => 'Entry',
      'foreignKey' => 'entry_id_1',
      'associationForeignKey' => 'entry_id_2',
      'with' => 'Relationship'
    )
  );
   */

}
