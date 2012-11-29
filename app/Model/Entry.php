<?php

class Entry extends AppModel {
  public $name = 'Entry';
  public $actsAs = array('Containable', 'Like.Likeable');

  public $belongsTo = array('User', 'Category', 'Location');

  public $hasMany = array(
      'EntryTag' => array(
          'className' => 'EntryTag',
          'foreignKey' => 'entry_id',
      ),
      'EntryStory' => array(
        'className' => 'EntryStory',
        'foreignKey' => 'entry_id'
      ),
      'Source' => array(
        'className' => 'Source',
        'foreignKey' => 'entry_id'
      )
  );

  public $hasAndBelongsToMany = array(
    'Connection' => array(
      'joinTable' => 'connections',
      'className' => 'Connection',
      'foreignKey' => 'entry_id_1',
      'associationForeignKey' => 'entry_id_2',
      'with' => 'Connection'
    ),
  );
}
