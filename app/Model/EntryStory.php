<?php

class EntryStory extends AppModel {
  public $name = 'EntryStory';
  public $thumbsUp = 0;
  public $thumbsDown = 0;
  public $useTable = 'entries_stories';
  public $actsAs = array('Containable');

  public $belongsTo = array('Entry', 'Story', 'User');
}