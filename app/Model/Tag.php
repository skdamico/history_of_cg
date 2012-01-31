<?php

class Tag extends AppModel {
  public $name = 'Tag';

  public $hasAndBelongsToMany = 'Entry';
}
