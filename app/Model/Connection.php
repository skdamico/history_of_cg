<?php

class Connection extends AppModel {
    public $name = 'Connection';
    public $useTable = 'connections';
    public $actsAs = array('Containable');

    public $belongsTo = array(
      'Entry1' => array(
        'className' => 'Entry',
        'foreignKey' => 'entry_id_1'
      ),
      'Entry2' => array(
        'className' => 'Entry',
        'foreignKey' => 'entry_id_2'
      )
    );
}
