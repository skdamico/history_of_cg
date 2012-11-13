<?php

class Story extends AppModel {
    public $name = 'Story';
    public $thumbsUp = 0;
    public $thumbsDown = 0;
    public $actsAs = array('Containable');

    public $belongsTo = array(
      'StoryType',
      'Author' => array(
        'className' => 'Entry',
        'foreignKey' => 'author_id',
        'conditions' => array('Author.category_id' => '1')
      )
    );

    public $hasMany = array(
      'EntryStory' => array(
        'className' => 'EntryStory',
        'foreignKey' => 'story_id'
      )
    );
}