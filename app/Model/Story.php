<?php

class Story extends AppModel {
    public $name = 'Story';

    public $belongsTo = array(
      'StoryType',
      'Author' => array(
        'className' => 'Entry',
        'foreignKey' => 'author_id',
        'conditions' => array('Entry.Category.name' => 'person')
      )
    );

    public $hasMany = array(
      'EntryStory' => array(
        'className' => 'EntryStory',
        'foreignKey' => 'story_id'
      )
    );
}
