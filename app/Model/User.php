<?php

class User extends AppModel {
  public $name = 'User';

  public $hasMany = array('Entry');

  public $belongsTo = array('Group');

  public $validate = array(
    'first_name' => array(
      'notEmpty' => array(
        'rule' => array('notEmpty'),
        'required' => true,
        'allowEmpty' => true,
      ),
    ),
    'last_name' => array(
      'notEmpty' => array(
        'rule' => array('notEmpty'),
        'required' => true,
        'allowEmpty' => true,
      ),
    ),
    'email' => array(
      'email' => array('rule'=>'email','allowEmpty'=>false,'required'=>true),
      'isUnique' => array('rule'=>'isUnique'),
      'notEmpty' => array('rule'=>'notEmpty')
    ),
    'password' => array(
      'minLength' => array(
        'rule' => array('minLength',6),
        'allowEmpty' => false,
        'required' => true
      ),
      'notEmpty' => array(
        'rule'=>'notEmpty'
      )
    ),
    'password_confirm' => array(
      'comparePasswords'  => array(
        'rule' => array('comparePasswords','password'),
        'allowEmpty'=>false,
        'required'=>true
      )
    )
  );

  public function bindNode($user) {
    return array('model' => 'Group', 'foreign_key' => $user['User']['group_id']);
  }

  // This method gets called when validating the virtual password_confirm field
  // If the values for password and password_confirm match, then return true
  // else it will return false.
  function comparePasswords( $field=array(), $compare_field=null ) {
    foreach( $field as $key => $value ) {
      $pass_1 = $value;
      $pass_2 = $this->data[$this->name][ $compare_field ];

      if($pass_1 !== $pass_2) {
        return false;
      }
      else {
        continue;
      }
    }
    return true;
  }

  function beforeSave($options = array()) {
    $password_unhashed = $this->data[$this->name]['password'];
    $this->data[$this->name]['password'] = AuthComponent::password( $password_unhashed );

    return true;
  }

  public function createTempPassword($len) {
	$pass = '';
	$lchar = 0;
	$char = 0;
	for($i = 0; $i < $len; $i++) {
		while($char == $lchar) {
			$char = rand(48, 109);
			if($char > 57) $char += 7;
			if($char > 90) $char += 6;
		}
		$pass .= chr($char);
		$lchar = $char;
	}
	return $pass;
  }
}
