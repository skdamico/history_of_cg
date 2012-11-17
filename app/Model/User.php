<?php

class User extends AppModel {
  public $name = 'User';

  public $hasMany = array('Entry', 'Vote' => array('className' => 'Vote', 'foreignKey' => 'user_id');

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
      'compare'    => array(
          'rule'      => array('password_match', 'password', true),
          'message'   => 'The password you entered does not match',
          'required'  => true,
      ),
      'length' => array(
          'rule'      => array('between', 6, 20),
          'message'   => 'Use between 6 and 20 characters',
      ),
      'empty' => array(
          'rule'      => 'notEmpty',
          'message'   => 'Must not be blank',
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


// below here is the change password system
#region
/**
 * Extra form dependent validation rules
 */
var $validateChangePassword = array(
    '_import' => array('password', 'password_confirm'),
    'password_old' => array(
        'correct' => array(
            'rule'      => 'password_old',
            'message'   => 'Does not match',
            'required'  => true,
        ),
        'empty' => array(
            'rule'      => 'notEmpty',
            'message'   => 'Must not be blank',
        ),
    ),
);

/**
 * Hold the current logged in user during change of password
 */
var $current_user_id;

/**
 * Dynamically adjust our validation behaviour
 *
 * Look for an _import key in new ruleset, and import
 * those rules from the base validation ruleset
 *
 * @param   string  array key of the validation ruleset to use
 */
function useValidationRules($key)
{
    $variable = 'validate' . $key;
    $rules = $this->$variable;

    if (isset($rules['_import'])) {
        foreach ($rules['_import'] as $key) {
            $rules[$key] = $this->validate[$key];
        }
        unset($rules['_import']);
    }

    $this->validate = $rules;
}

/**
 * Ensure password matches the user session
 *
 * @param   array   data provided by the controller
 */
function password_old($data)
{
    $password = $this->field('password',
        array('User.id' => $this->current_user_id));
    return $password ===
        Security::hash($data['password_old'], null, true);
}

/**
 * Ensure two password fields match
 *
 * @param   array   data provided by the controller
 * @param   string  the original (already hashed) password fieldname
 * @param   bool    whether the password field has been hashed,
 *                  only hashed when a username input is present
 */
function password_match($data, $password_field, $hashed = true)
{
    $password         = $this->data[$this->alias][$password_field];
    $keys             = array_keys($data);
    $password_confirm = $hashed ?
        Security::hash($data[$keys[0]], null, true) :
        $data[$keys[0]];
    return $password === $password_confirm;
}

/**
 * Generate a random pronounceable password
 */
function generatePassword($length = 10) {
    // Seed
    srand((double) microtime()*1000000);

    $vowels = array('a', 'e', 'i', 'o', 'u');
    $cons = array('b', 'c', 'd', 'g', 'h', 'j', 'k', 'l', 'm', 'n',
        'p', 'r', 's', 't', 'u', 'v', 'w', 'tr',
        'cr', 'br', 'fr', 'th', 'dr', 'ch', 'ph',
        'wr', 'st', 'sp', 'sw', 'pr', 'sl', 'cl');

    $num_vowels = count($vowels);
    $num_cons = count($cons);

    $password = '';
    for ($i = 0; $i < $length; $i++){
        $password .= $cons[rand(0, $num_cons - 1)] . $vowels[rand(0, $num_vowels - 1)];
    }

    return substr($password, 0, $length);
}
#endregion
}