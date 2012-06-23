<form action='/signup' method='post' accept-charset='utf-8' id="UserSignupForm">
    <div class='input text'>
        <input type='text' name='data[User][first_name]' maxlength='20' id='UserFirstName' placeholder="First Name" />
    </div>
    <div class='input text'>
        <input type='text' name='data[User][last_name]' maxlength='30' id='UserLastName' placeholder="Last Name" />
    </div>
    <div class='input text required'>
        <input type='text' name='data[User][email]' maxlength='200' id='UserEmail' placeholder="Email" />
    </div>
    <div class='input password required'>
        <input type='password' name='data[User][password]' id='UserPassword' placeholder="Password" />
    </div>
    <div class='input password required'>
        <input type='password' name='data[User][password_confirm]' id='UserPasswordConfirm' placeholder="Confirm Password" />
    </div>
    <div class='submit'>
        <input type='submit' value='Sign up' />
        <p>Already have an account? <a href="login">Login!</a></p>
		<p>Forgot your password? <a href="forgot">Recover it!</a></p>
	</div>
</form>
