<?php

class EntryTag extends AppModel {
    public $name = 'EntryTag';
    public $useTable = 'entries_tags';

    public $belongsTo = array('Entry', 'Tag');
}
