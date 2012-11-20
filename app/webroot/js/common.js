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
    var $dialog = $('<div></div>')
        .html('')
        .dialog({
            autoOpen: false,
            modal: true,
            show: 'fadeIn',
            title: '',
            maxHeight : 1000,
            maxWidth : 2000,
            width: 600
        });


    $('[id=opener]').click(function() {
        console.log('clicked');
        var story = $(this)[0];
        var stories = eval('('+story.getAttribute('data-stories')+')');
        var index = story.getAttribute('data-index') - 1;
        if (stories[index]['Story']['StoryType'].name == 'Image') {
            $dialog.html('<div class="container"><img style="width:590px;" src='+stories[index]['Story']['url']+'></div>');
        }
        if (stories[index]['Story']['StoryType'].name == 'Video') {
            $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
        }
        if (stories[index]['Story']['StoryType'].name == 'Text') {
            $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
        }
        console.log('entry filled');
        $dialog.html('<div>'+stories[index]["Story"]+'</div>');
        $dialog.dialog("option", "title", story.getAttribute('data-title'));
        $dialog.dialog("option", "buttons", {
            "<": function() {
                if (index <= stories.length-1 && index > 0) {
                    index--;
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                }
                else {
                    index = stories.length-1;
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                }
            },
            "Up": function() {
                $dialog.html('<div>up vote</div>');
                //story['Story']['thumbsUp']++
                //dim out the button for this user
                // pyahhh
            },
            "X": function() {
                $dialog.dialog("close");
            },
            "Down": function() {
                $dialog.html('<div>down vote<div>');
                //story['Story']['thumbsDown']++
                //dim out the button for this user
                // email terrence with this entry
            },
            ">": function() {
                if (index < stories.length-1 && index >= 0) {
                    index++;
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        console.info(stories[index]['Story']);
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                }
                else {
                    index = 0;
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                }

            }
        });
        console.log('buttons drawn');
        $dialog.dialog('open');
        // prevent the default action, e.g., following a link
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

    var $timeline = $('.timeline');
    var $tooltip = $('.timeline .tooltip');
    if( $timeline ) {
      $timeline.hover(
        function() {
          $tooltip.stop(true, true).fadeIn('fast');
        },
        function() {
          $tooltip.stop(true, true).fadeOut('fast');
        });
      $(document).mousemove(function(e) {
        $tooltip.css({
          left: e.pageX,
          top: e.pageY
        });
      });
    }
});
