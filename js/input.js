$(function() {
    function split(val) {
        return val.split(/,\s*/);
    }

    function extractLast(term) {
        return split(term).pop();
    }
    
    // add autocomplete

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
        dateFormat: "mm-dd-yy",
        altField: "#date_alternative",
        altFormat: "yy-mm-dd",
        changeMonth: true,
        changeYear: true
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
