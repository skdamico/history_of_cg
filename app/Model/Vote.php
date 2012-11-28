<?php

class Vote extends AppModel {
    public $name = 'Vote';
    public $useTable = 'entry_votes';

    public $belongsTo = array('Entry', 'Story', 'User');
}