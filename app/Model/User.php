<?php

class User extends AppModel {
  public $name = 'User';

  public $hasMany = array('Entry');

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

}
