<?php

class EntryStory extends AppModel {
  public $name = 'EntryStory';
  public $useTable = 'entries_stories';
  public $actsAs = array('Containable');

  public $belongsTo = array('Entry', 'Story', 'User');
}
