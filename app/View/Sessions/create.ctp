<form action='/login' method='post' accept-charset='utf-8' id="UserCreateForm">
    <div class='input text required'>
        <input type='text' name='data[User][email]' maxlength='200' id='UserEmail' placeholder="Email" />
    </div>
    <div class='input password required'>
        <input type='password' name='data[User][password]' maxlength='200' id='UserPassword' placeholder="Password" />
    </div>
    <div class='submit'>
        <input type='submit' value='Login' />
        <p>Don't have an account? <a href="signup">Get one here!</a>
        <br>Forgot your password? <a href="forgot">Find it here!</a></p>
    </div>
</form>
