<?php

class EntryTag extends AppModel {
    public $name = 'EntryTag';

    public $belongsTo = array('Entry', 'Tag');
}
