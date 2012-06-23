<?php
	echo $form->create('User',array('action' => 'forgot'));
	echo $form->input('email',array('label' => ''));
	echo $form->end('Reset Password');
?>