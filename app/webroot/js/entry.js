function change_publish_ui(button, publish, value) {
    var $publish = $(button).siblings('.publish');

    if(publish === "publish") {
        if(value === 1) {
            $(button).html('Unpublish Story');
            $publish.val('0');
        }
        else if(value === 0) {
            $(button).html('Publish Story');
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
    // stupid
    var dateInfo = {
        'project': {
            'dateLabel': 'Date',
            'helperText': 'When did this project take place?'
        },
        'person': {
            'dateLabel': 'Birth date',
            'helperText': 'When was this person born?',
            'secondDateLabel': 'Deceased date',
            'secondHelperText': 'When did this person DIE!?',
            'secondDateCheckboxLabel': 'This person is deceased'
        },
        'organization': {
            'dateLabel': 'Established Date',
            'helperText': 'When was this organization founded?',
            'secondDateLabel': 'Closing Date',
            'secondHelperText': 'When did this organization close?',
            'secondDateCheckboxLabel': 'This organization no longer exists'
        },
        'event': {
            'dateLabel': 'Date',
            'helperText': 'When did this event take place?',
            'secondDateLabel': 'End Date',
            'secondHelperText': 'When did this event end?',
            'secondDateCheckboxLabel': 'This is a multi-day event'
        },
        'none': {
            'dateLabel': 'Date',
            'helperText': 'Select an entry type to learn more about this date'
        }
    };


    function change_colors(color) {
        var allFields = $('.fields:not(.connection-fields) input[type=text], .fields:not(.connection-fields) select, .fields:not(.connection-fields) textarea, ul.token-input-list-hcg, li.source-title input, li.source-url input, .stories-col .stories p.story-collapsed-heading span.title');
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

    function change_date_fields(t) {
        var $dateLabel = $('.basics .label-entry-date span.label');
        var $dateHelperText = $('.basics .entry-date .helper-popups');
        var $secondDateLabel = $('.basics .label-entry-date-2 span.label');
        var $secondDateHelperText = $('.basics .entry-date-2 .helper-popups');
        var $secondDateCheckboxLabel = $('.basics .entry-date-2-selected label');
        var $secondDate = $('.basics .entry-date-2');
        var $secondDateCheckbox = $('.basics #entry-date-selected');

        // date 1 section
        $dateLabel.html(dateInfo[t].dateLabel);
        $dateHelperText.html(dateInfo[t].helperText);

        // project is the only type without a second date
        if(t !== 'project' && t !== 'none') {
            $secondDateLabel.html(dateInfo[t].secondDateLabel);
            $secondDateHelperText.html(dateInfo[t].secondHelperText);
            $secondDateCheckboxLabel.html(dateInfo[t].secondDateCheckboxLabel);

            // show all second date related fields and labels
            $secondDate.show();
            $secondDateLabel.parent().show();
            $secondDateCheckboxLabel.parent().show();

            // is the checkbox checked? if so show the second date
            show_second_date($secondDateCheckbox.is(':checked'));
        }
        else {
            // hide the second date sections
            $secondDateLabel.parent().hide();
            $secondDateCheckboxLabel.parent().hide();
            $secondDate.hide();
        }
    }

    function change_date_fields_with(t) {
        if(t.indexOf('project') !== -1) {
            change_date_fields('project');
        }
        else if(t.indexOf('person') !== -1) {
            change_date_fields('person');
        }
        else if(t.indexOf('organization') !== -1) {
            change_date_fields('organization');
        }
        else if(t.indexOf('event') !== -1) {
            change_date_fields('event');
        }
        else {
            change_date_fields('none');
        }
    }

    function init() {
        // Initialize color change
        var initialEntryType = $('#main-stub .entry-type-select').children('option:selected').text().toLowerCase();

        change_colors_with(initialEntryType);
        change_date_fields_with(initialEntryType);

        // category change event should change all colors to current type
        $('#main-stub .entry-type-select').change(function() {
            var t = $(this).children('option:selected').text().toLowerCase();

            change_colors_with(t);
            change_date_fields_with(t);
        });

        // ----------------- DATEPICKER -----------------
        $("#entry-date-box-1").datepicker({
          altField: '#entry-date-box-1-helper',
          altFormat:'yy-mm-dd',
          changeMonth: true,
          changeYear: true,
          minDate: new Date(1940, 1 - 1, 1),
          yearRange: '1940:c',
          onSelect: function( selectedDate ) {
            var option = "minDate",
                instance = $( this ).data( "datepicker" ),
                date = $.datepicker.parseDate(
                  instance.settings.dateFormat ||
                  $.datepicker._defaults.dateFormat,
                  selectedDate, instance.settings );
            $('#entry-date-box-2').datepicker( "option", option, date );

            // select the second date automatically if shown.
            if($('.basics #entry-date-selected').is(':checked')) {
              $('#entry-date-box-2').val(selectedDate);
            }
          },
          minDate: new Date(1940, 1 - 1, 1)
        });
        $("#entry-date-box-2").datepicker({
          altField: '#entry-date-box-2-helper',
          altFormat:'yy-mm-dd',
          changeMonth: true,
          changeYear: true,
          minDate: new Date(1940, 1 - 1, 1),
          yearRange: '1940:c',
          onSelect: function( selectedDate ) {
            var option = "maxDate",
                instance = $( this ).data( "datepicker" ),
                date = $.datepicker.parseDate(
                  instance.settings.dateFormat ||
                  $.datepicker._defaults.dateFormat,
                  selectedDate, instance.settings );
            $('#entry-date-box-1').datepicker( "option", option, date );
          },
        });

        show_second_date($('.basics #entry-date-selected').is(':checked'));
        $('.basics #entry-date-selected').click(function() {
            show_second_date(this.checked);
        });


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
            $('li.label-entry-homepage').css("top","273px");
        });

        function show_source(show) {
            if (show) {
                $('.basics .source-title').fadeIn();
                $('.basics .source-url').fadeIn();
                $('.basics .label-entry-date').css('margin-top','280px');
                $('li.label-entry-homepage').css("top","273px");
            }
            else {
                $('.basics .label-entry-date').css('margin-top','175px');
                $('.basics .source-title').hide();
                $('.basics .source-url').hide();
                $('li.label-entry-homepage').css("top","170px"); 
            }
        }

        var $allpublish = $('.form-container form .save .publish');

        // init entry save buttons
        $('.form-container form .save button').click( function() {

          if(!$(this).hasClass('publish-button')) {
            // save draft, do not publish
            $allpublish.attr('disabled', true);
          }

          return true;
        });
    }

    init();
});
