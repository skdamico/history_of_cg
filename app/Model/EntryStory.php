<?php

class EntryStory extends AppModel {
  public $name = 'EntryStory';
  public $useTable = 'entries_stories';

  public $belongsTo = array('Entry', 'Story', 'User');
}
