$(function() {
    function split(val) {
        return val.split(/,\s*/);
    }

    function extractLast(term) {
        return split(term).pop();
    }
    

    // fill in categories box
    $.getJSON("get-categories.php", function(data) {
        for(var i=0; i<data.categories.length; i++) {
            $("#categories").append("<option value='"+data.categories[i].id+"'>"+data.categories[i].main+"</option>");
        }
    });

    // add geo autocomplete
    var options = {
        map_frame_id: "mapframe",
        map_window_id: "mapwindow",
        lat_id: "lat",
        lng_id: "lng",
        addr_id: "location",
        lat: "37.7749295",
        lng: "-122.4194155",
        map_zoom: 13 
    }
    
    $('#location').autogeocomplete(options);

    // other autocompletes
    $("#project_name").bind("keydown", function(event) {
        if(event.keyCode === $.ui.keyCode.TAB &&
           $(this).data("autocomplete").menu.active) {
            event.preventDefault();
        }
    })
    .autocomplete({
        source: "autocomplete.php?t=project&c=name",
        minLength: 2
    });
    
    $("#person_name").bind("keydown", function(event) {
        if(event.keyCode === $.ui.keyCode.TAB &&
           $(this).data("autocomplete").menu.active) {
            event.preventDefault();
        }
    })
    .autocomplete({
        source: function(request, response) {
            $.getJSON("autocomplete.php?t=person&c=name", {
                term: extractLast( request.term )
            }, response);
        },
        search: function() {
            var term = extractLast(this.value);
            if(term.length < 2) {
                return false;
            }
        },
        focus: function() {
            return false;
        },
        select: function(event, ui) {
            var terms = split(this.value);

            terms.pop();
            terms.push(ui.item.value);
            terms.push("");
            this.value = terms.join(", ");
            return false;
        }
    });

    $("#organization").bind("keydown", function(event) {
        if(event.keyCode === $.ui.keyCode.TAB &&
           $(this).data("autocomplete").menu.active) {
            event.preventDefault();
        }
    })
    .autocomplete({
        source: function(request, response) {
            $.getJSON("autocomplete.php?t=organization&c=name", {
                term: extractLast( request.term )
            }, response);
        },
        search: function() {
            var term = extractLast(this.value);
            if(term.length < 2) {
                return false;
            }
        },
        focus: function() {
            return false;
        },
        select: function(event, ui) {
            var terms = split(this.value);

            terms.pop();
            terms.push(ui.item.value);
            terms.push("");
            this.value = terms.join(", ");
            return false;
        }
    });
    
    
    // create datepicker
    $("#date_created").datepicker({
        yearRange: "-90:c",
        dateFormat: "mm-yy",
        altField: "#date_alternative",
        altFormat: "yy-mm-dd",
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,

        onClose: function(dateText, inst) {
            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val(); 
            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val(); 
            $(this).val($.datepicker.formatDate('M. yy', new Date(year, month, 1)));
            $("#date_alternative").val($.datepicker.formatDate('yy-mm-dd', new Date(year, month, 1)));
        }
    });

    $("#date_created").focus(function() {
        $(".ui-datepicker-calendar").hide();
        $("#ui-datepicker-div").position({
            my: "center top",
            at: "center bottom",
            of: $(this)
        });
    });

    // submit form on validation
    var options = {
        beforeSubmit: function() {
            if($("#inputform").validate().form()) {
                $("#inputform").animate({opacity: 0.3}, 300);
                $("#loader").fadeIn(200);
                return true;
            }
            else {
                return false;
            }
        },
        target: "#target",
        success: function(response) {
            $("#loader").fadeOut(200);
            $("#inputform").animate({opacity: 1.0},300);
        }
    };

    $("#inputform").ajaxForm(options);
    
});
