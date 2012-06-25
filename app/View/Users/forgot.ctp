<form action='/users/forgot' method='post' accept-charset='utf-8' id="UserSignupForm">
	<div class='input text required'>
			<input type='text' name='data[User][email]' maxlength='200' id='UserEmail' placeholder="Email" />
	</div>
	
	<div class='submit'>
        <input type='submit' value='Reset Password' />
        <p>Already have an account? <a href="login">Login!</a></p>
	</div>
</form>