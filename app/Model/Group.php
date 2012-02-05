<?php

class Group extends AppModel {

  public $actsAs = array('Acl' => array('type' => 'requester'));

  public $validate = array(
    'name' => array(
      'notempty' => array(
        'rule' => array('notempty'),
      ),
    ),
  );

  public $hasMany = array(
    'User' => array(
      'className' => 'User',
      'foreignKey' => 'group_id',
      'dependent' => false,
    )
  );

  public function parentNode() {
      return null;
  }
}
