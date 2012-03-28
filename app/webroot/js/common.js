$(function() {
    var buttonText = {
        'signupOrLogin': {
            'login': 'Not signed up yet?',
            'signup': 'Already have an account?'
        }
    };

    $('#login_button').click(function() {
        // slide down the login/signup box
        $('#login_box').slideToggle();

        return false;
    });

    $('#login_box .signup-or-login a').click(function() {

        // toggle signup and login forms
        var signup = $(this).parent().hasClass('login');

        toggleSignupForm(signup);

        return false;
    });

    function toggleSignupForm(signup) {
        if(signup) {
            $('#login_box .form-container').load('/templates/signup.html');
            $('#login_box .signup-or-login')
                .removeClass('login')
                .children('a').html(buttonText.signupOrLogin.signup);
        }
        else {
            $('#login_box .form-container').load('/templates/login.html');
            $('#login_box .signup-or-login')
                .addClass('login')
                .children('a').html(buttonText.signupOrLogin.login);
        }
    }

    
    if( $('#login_button') ) {
        $('#login_box .form-container').load('/templates/login.html');
    }
});
