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

    function change_colors(color) {
        var allFields = $('.fields input[type=text], .fields textarea, ul.token-input-list-hcg, li.source-title input, li.source-url input, .stories-col .stories p.story-collapsed-heading span.title');
        var allBorderFields = $('.fields .helper-popups');
        var allHoverFields = $('button, .button');

        allFields.removeClass('project person organization event none');
        allFields.addClass(color);

        allBorderFields.removeClass('project-border person-border organization-border event-border none-border');
        allBorderFields.addClass(color+'-border');

        allHoverFields.removeClass('project-hover person-hover organization-hover event-hover none-hover');
        allHoverFields.addClass(color+'-hover');
    }

    function change_colors_with(t) {
        if(t.indexOf('project') !== -1) {
            change_colors('project');
        }
        else if(t.indexOf('person') !== -1) {
            change_colors('person');
        }
        else if(t.indexOf('organization') !== -1) {
            change_colors('organization');
        }
        else if(t.indexOf('event') !== -1) {
            change_colors('event');
        }
        else {
            change_colors('none');
        }
    }

    function init() {
        // Initialize color change
        change_colors_with($('#main-stub .entry-type-select').children('option:selected').text().toLowerCase());

        // category change event should change all colors to current type
        $('#main-stub .entry-type-select').change(function() {
            var t = $(this).children('option:selected').text().toLowerCase();

            change_colors_with(t);
        });

        // ----------------- DATEPICKER -----------------
        $("#entry-date-box-1").datepicker({ altField: '#entry-date-box-1-helper', altFormat:'yy-mm-dd' });
        $("#entry-date-box-2").datepicker({ altField: '#entry-date-box-2-helper', altFormat:'yy-mm-dd' });

        show_second_date($('.basics #entry-date-selected').is(':checked'));
        $('.basics #entry-date-selected').click(function() {
            show_second_date(this.checked);
        });

        function show_second_date(show) {
            if (show) {
                $('.basics .entry-date-2').fadeIn();
                $('.basics .label-entry-date-2').fadeIn();
            }
            else {
                $('.basics .entry-date-2').hide();
                $('.basics .label-entry-date-2').hide();
            }
        }


        // ----------------- HELPER TEXTS - basics
        $('.need-helper')
          .focus(function () {
            $(this).siblings('.helper-popups').fadeIn();
          })
          .focusout(function () {
            $(this).siblings('.helper-popups').fadeOut();
        });

        // ----------------- SOURCES - basic information -----------------
        show_source($('.basics #entry-source').is(':checked'));
        $('.basics #entry-source').click(function(){
            show_source(this.checked);
        });

        function show_source(show) {
            if (show) {
                $('.basics .entry-source input').val('yes');
                $('.basics .source-title').fadeIn();
                $('.basics .source-url').fadeIn();
                $('.basics .label-entry-date').css('margin-top','280px');
            }
            else {
                $('.basics .entry-source input').val('no');
                $('.basics .label-entry-date').css('margin-top','175px');
                $('.basics .source-title').hide();
                $('.basics .source-url').hide();
            }
        }

        // init entry save buttons
        $('.form-container form .save button').click( function() {

          if(!$(this).hasClass('publish-button')) {
            // save draft, do not publish
            change_publish_ui(this, "draft", "disable");
          }

          return true;
        });
    }

    init();
});
