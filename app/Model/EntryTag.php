<?php

class EntryTag extends AppModel {
    public $name = 'EntryTag';
    public $useTable = 'entries_tags';
    public $actsAs = array('Containable');

    public $belongsTo = array('Entry', 'Tag');
}
