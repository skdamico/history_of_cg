$(function() {

    // ----------------- DATEPICKER -----------------
    $("#entry-date-box-1").datepicker({ altField:'#entry-date-box-1-helper', altFormat:'yy-mm-dd' });

    // ----------------- COLLAPSE STORIES -----------------
    $('.story p.story-collapsed-heading').click(function() {
        $('.story-collapsed').slideToggle('slow');
    });

    // ----------------- HELPER TEXTS - basics
	$('.need-helper')
		.focus(function () {
			$(this).siblings('.helper-popups').fadeIn();
		})
		.focusout(function () {
			$(this).siblings('.helper-popups').fadeOut();
		});


    // ----------------- HELPER TEXTS - story or collapse ----------------- NEED SOME ABSTRACTION HELP
    $('.story li.story-title input').focus(function() {
        $('span#helper-story-title').fadeIn();
    });
    $('.story li.story-title input').focusout(function() {
        $('span#helper-story-title').fadeOut();
    });
    $('.story li.story-date input').focus(function() {
        $('span#helper-story-date').fadeIn();
    });
    $('.story li.story-date input').focusout(function() {
        $('span#helper-story-date').fadeOut();
    });
    $('.story #story-story-box').focus(function() {
        $('span#helper-story-story').fadeIn();
    });
    $('.story #story-story-box').focusout(function() {
        $('span#helper-story-story').fadeOut();
    });
    $('.story li.story-author input').focus(function() {
        $('span#helper-story-author').fadeIn();
    });
    $('.story li.story-author input').focusout(function() {
        $('span#helper-story-author').fadeOut();
    });

    // ----------------- SOURCES - basic information -----------------
    $('.basics #entry-source').click(function(){
        if (this.checked) {
            $('.basics .source-title').fadeIn();
            $('.basics .source-url').fadeIn();
            $('.basics .label-entry-date').css('margin-top','280px');
        }
        else {
            $('.basics .label-entry-date').css('margin-top','175px');
            $('.basics .source-title').hide();
            $('.basics .source-url').hide();
        }
    });

    // ----------------- SOURCES -----------------
    $('.story #story-source').click(function(){
        if (this.checked) {
            $('.story .source-title').fadeIn();
            $('.story .source-url').fadeIn();
        }
        else {
            $('.story .source-title').hide();
            $('.story .source-url').hide();
        }

    });

});
