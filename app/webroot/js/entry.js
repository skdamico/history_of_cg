function change_publish_ui(button, publish, value) {
    var $publish = $(button).siblings('.publish');

    if(publish === "publish") {
        if(value === 1) {
            $(button).html('Unpublish');
            $publish.val('0');
        }
        else if(value === 0) {
            $(button).html('Publish');
            $publish.val('1');
        }
    }
    else if(publish === "draft") {
        // disable draft
        if(value === 'disable') {
            $publish.attr('disabled', true);
        }
        else if(value === 'enable') {
            $publish.removeAttr('disabled');
        }
    }
}

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


    // init entry save buttons
    $('.form-container form .save button').click( function() {

      if(!$(this).hasClass('publish-button')) {
        // save draft, do not publish
        change_publish_ui(this, "draft", "disable");
      }

      return true;
    });

});
