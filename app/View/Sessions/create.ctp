<?php

echo $this->Form->create('User', array(
  'url' => array('controller'=>'sessions','action' => 'create')
));

// create a <input> element for the email field
echo $this->Form->input('email');

// create a <input> element for the password field
echo $this->Form->input('password');

// create a closing <form> tag and a <input type="submit"> button
echo $this->Form->end("Login");
?>
