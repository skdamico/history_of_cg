<form action='/forgot' method='post' accept-charset='utf-8' id="UserForgotForm">
	<div class='input text required'>
			<input type='text' name='data[User][email]' maxlength='200' id='UserEmail' placeholder="Email" />
	</div>

	<?php
		echo $form->create('User',array('action' => 'forgot'));
		echo $form->input('email',array('label' => ''));
		echo $form->end('Reset Password');
	?>
	
	<div class='submit'>
        <input type='submit' value='Reset Password' />
        <p>Already have an account? <a href="login">Login!</a></p>
	</div>
</form>