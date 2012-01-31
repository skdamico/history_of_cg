<?php

echo $this->Form->create('User', array('action' => 'signup'));

// As you can see I defined error messages in the view files instead of the User model.
// I consider error messages as view logic. This way, everything that renders in the
// view is in one place.
echo $this->Form->input('first_name', array(
  'label' => __('First name', true),
  'error' => array(
      'notEmpty'       => __("Your first name is required",true)
  )
));

echo $this->Form->input('last_name', array(
  'label' => __('Last name', true),
  'error' => array(
      'notEmpty'       => __("Your last name is required",true)
  )
));

echo $this->Form->input('email', array(
  'type' => 'email',
  'error' => array(
      'email'     => __("This is not a valid email address",true),
      'isUnique'  => __("There is already an account registered under this email address",true),
      'notEmpty'  => __("You must fill in an email address",true)
  )
));

echo $this->Form->input('password', array(
  'error' => array(
      'notEmpty'      => __("You must fill in a password",true),
      'minLength' => __("A password must be at least 5 characters long",true)
  )
));

echo $this->Form->input('password_confirm', array(
  'type'  => 'password',
  'error' => array(
      'comparePasswords'  => __("Your passwords do not match",true)
  )
));

echo $this->Form->end(__('Sign up',true));
?>
