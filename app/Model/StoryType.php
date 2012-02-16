<?php

class StoryType extends AppModel {
  public $name = 'StoryType';

  public $hasMany = array('Story');
}
