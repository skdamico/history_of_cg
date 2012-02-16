$(function() {

    // ----------------- DATEPICKER -----------------
    $("#entry-date-box-1").datepicker({ altField: '#entry-date-box-1-helper', altFormat:'yy-mm-dd' });

    // ----------------- HELPER TEXTS - basics
    $('.need-helper')
      .focus(function () {
        $(this).siblings('.helper-popups').fadeIn();
      })
      .focusout(function () {
        $(this).siblings('.helper-popups').fadeOut();
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
});
