$(function() {
    var step1Complete = false;

    function split(val) {
        return val.split(/,\s*/);
    }

    function extractLast(term) {
        return split(term).pop();
    }
    
    function validateStep1() {
        var nameValid = ($("#name").val().trim() != '');
        var tagsValid = ($("#tags").val().split(",").length > 1);
        var categoriesValid = ($("#categories option:selected").val().trim() != '');

        if(nameValid && tagsValid && categoriesValid) {
            step1Complete = true;
            $("#step-2").fadeIn(500);
        }
        else {
            step1Complete = false;
            $("#step-2").fadeOut(500);
            
        }
    }


    function populateYears(id) {
        var date = new Date();
        var currentyear = parseInt(date.getFullYear());
        var yearmin = 1930;

        var yiter = yearmin;
        while (yiter <= currentyear) {
            $(id).prepend("<option value='"+yiter+"'>"+yiter+"</option>");
            yiter++;
        }
    }

    function populateMonths(id) {
        var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        
        // append blank for validation
        $(id).append("<option value=''></option>");
        for(var i=0; i<months.length; i++) {
            $(id).append("<option value='"+(i+1)+"'>"+months[i]+"</option>");
        }
    }
    
    // get the number of days based on the year and zero-based month
    function getNumberOfDays(year, month) {
        var isLeap = ((year % 4) == 0 && ((year % 100) != 0 || (year % 400) == 0));
        return [31, (isLeap ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month];
    }

    function populateDays(year_id, month_id, day_id) {
        var selectedDay = $(day_id).children("option:selected").html();
        $(day_id).html("");
        var numDays = getNumberOfDays($(year_id).html(), ($(month_id).val()-1));

        // append first option
        var a = "<option";
        if(selectedDay == "")
            a += " selected='selected'";
        a += " value=''></option>";
        $(day_id).append(a);

        // append rest
        for(var i=0; i<numDays; i++) {
            a = "<option";
            if(selectedDay != "" && parseInt(selectedDay) == (i+1)) {
                a += " selected='selected'";
            }
            a += " value='"+(i+1)+"'>"+(i+1)+"</option>";
            $(day_id).append(a);
        }
    }
    
    function initLocationDateModule(where, endDate, endDateOption) {
        // init dates
        var yearCreated = $(where).find(".start-year").last();
        var monthCreated = $(where).find(".start-month").last();
        var dayCreated = $(where).find(".start-day").last();
        
        if(endDate) {
            var yearEnd = $(where).find(".end-year").last();
            var monthEnd = $(where).find(".end-month").last();
            var dayEnd = $(where).find(".end-day").last();
        }
        
        populateYears(yearCreated);
        populateMonths(monthCreated);

        if(endDate) {
            populateYears(yearEnd);
            populateMonths(monthEnd);
        }
       
        $(yearCreated).change(function() {
            if(endDate) {
                $(yearEnd).val($(this).val());
            }
        });

        // create correct number of days if month has changed
        $(monthCreated).change(function() {
            populateDays(yearCreated, monthCreated, dayCreated);
            
            // if there is a date range, auto populate the end date
            if(endDate && $(monthEnd).val() == '') {
                $(monthEnd).val($(this).val());
                populateDays(yearEnd, monthEnd, dayEnd);
            }
        });
        $(monthEnd).change(function() {
            populateDays(yearEnd, monthEnd, dayEnd);
        });
        // auto populate the end date
        $(dayCreated).change(function() {
            if(endDate && $(dayEnd).val() == '') {
                $(dayEnd).val($(this).val());
            }
        });

        if(endDate && !endDateOption) {
            $(where).find(".location-date-module").last().children(".end-date").show();
        }
        if(endDateOption) { 
            var currentLocModule = $(where).find(".location-date-module").last();
            $(".end-date-option span", currentLocModule).html(endDateOption);
            $(".end-date-option", currentLocModule).show();
            $(".end-date-option input[type=checkbox]", currentLocModule).click(function() {
                if($(this).is(":checked")) {
                    $(currentLocModule).children(".end-date").fadeIn();
                    $(currentLocModule).children(".end-date").children().removeClass("nosubmit");
                }
                else {
                    $(currentLocModule).children(".end-date").fadeOut();
                    $(currentLocModule).children(".end-date").children().addClass("nosubmit");
                }
            });
        }
        // init locations
        var country = $(where).find(".country").last();
        var state = $(where).find(".state").last();
        print_country(country);
        $(country).change(function() {
            print_state(state, $(this).children("option").index($(country).children("option:selected")));
        });
    }

    // Clones and prepares a location/date pair. 
    // makeLocationDateModule : String, String or false, String or false, Boolean, String
    function makeLocationDateModule(dateName, endDateName, endDateOption, allowMultiple, where) {
        if(!where) {
            where = "#location-form";
        }
        
        // clone and append template to form
        var locationModule = $("#location-date-module").clone();
        locationModule.removeAttr("id");
        if(dateName) {
            $(locationModule).children(".date").children("label").html(dateName);
        }
        if(endDateName) {
            $(locationModule).children(".end-date").children("label").html(endDateName);
        }
        if(endDateOption) {
            $(locationModule).children(".end-date-option").children("span").html(endDateOption);
        }
        locationModule.fadeIn();
        $(where).append(locationModule);
        if(allowMultiple) {
            $(where+" .add-location-date:last").show().click(function() { makeLocationDateModule(dateName, endDateName, endDateOption, allowMultiple, where); });
        }

        initLocationDateModule(where, endDateName, endDateOption);
    }

    // Clones and prepares a narrative module
    function makeNarrativeModule() {
        var narrativeModule = $("#narrative-module").clone();
        narrativeModule.removeAttr("id");
        narrativeModule.fadeIn();
        $("#narrative-form").append(narrativeModule);
        $("#narrative-form .add-narrative:last").click(function() { makeNarrativeModule() });

        $("#narrative-form .author:last").bind("keydown", function(event) {
            if(event.keyCode === $.ui.keyCode.TAB &&
                $(this).data("autocomplete").menu.active) {
                event.preventDefault();
            }
        })
        .autocomplete({
            source: function(request, callback) {
                $.getJSON("autocomplete.php", { t: "person", q: request.term }, callback);
            },
            focus: function( event, ui ) {
                $( this ).val( ui.item.name );
                return false;
            },
            select: function( event, ui ) {
                $(this).val( ui.item.name );
                $("#narrative-form .author-id:last").val( ui.item.id );
                
                return false;
            },
            minLength: 1
        })
        .data( "autocomplete" )._renderItem = function( ul, item ) {
            var re = new RegExp(this.term, "i");
            var match = item.name.match(re);
            var t = item.name.replace(re,"<span class='autocomplete-name-term-highlight'>" + 
                        match + 
                        "</span>");
            return $( "<li></li>" )
                .data( "item.autocomplete", item )
                .append( "<a><span class='autocomplete-name'>" + t + "</span></span></a>" )
                .appendTo( ul );
        };
    }
    function resetLocation(where) {
        // reset
        $(".country", where).val('');
        $(".country", where).trigger("change");
        $(".state", where).val('');
        $(".city", where).val('');
        $(".start-year option:eq(0)", where).attr("selected", "selected");
        $(".start-year", where).trigger("change");
        $(".start-month", where).val('');
        $(".start-month", where).trigger("change");
        $(".start-day", where).val('');
    }

    function fillLocation(data, where) {
        // Fill in form
        $(".country", where).val(data.country);
        $(".country", where).trigger("change");
            
        if(data.state != null) {
            $(".state", where).val(data.state);
        }
        if(data.city != null) {
            $(".city", where).val(data.city);
        }
        if(data.start_year != null) {
            $(".start-year", where).val(data.start_year);
            $(".start-year", where).trigger("change");
        }
        if(data.start_month != null) {
            $(".start-month", where).val(data.start_month);
            $(".start-month", where).trigger("change");
        }
        if(data.start_day != null) {
            $(".start-day", where).val(data.start_day);
        }
    }

    // Will try to auto fill the location of an organization
    function autoFillLocation() {
        // grab first org
        var name = $("#organization").val().split(",")[0];
        name = name.replace("\'", "");
        
        var locModule = $("#location-form .location-date-module:first");
        
        if(name != '' || name != null) {
            getLocation("organization", name, function(data) {
                if(data != "[]" && data != '') {
                    var loc = $.parseJSON(data);
                    loc = loc[0];

                    fillLocation(loc, locModule);
                }
                else {
                    resetLocation();
                }
            });
        }
        
    }

    // Creates an initialized form
    function formInit(category) {
        if($("#person")) {
            $("#person").tokenInput("autocomplete.php?t=person", {
                theme: "hcg",
                allowCustomEntry: true,
                preventDuplicates: true
            });
        }
        if($("#organization")) {
            if(category == "project") {
                $("#organization").tokenInput("autocomplete.php?t=organization", {
                    theme: "hcg",
                    allowCustomEntry: true,
                    preventDuplicates: true,
                    onAdd: autoFillLocation,
                    onDelete: autoFillLocation
                });
            }
            else {
                $("#organization").tokenInput("autocomplete.php?t=organization", {
                    theme: "hcg",
                    allowCustomEntry: true,
                    preventDuplicates: true
                });
            }
        }
        if($("#event")) {
            $("#event").tokenInput("autocomplete.php?t=event", {
                theme: "hcg",
                allowCustomEntry: true,
                preventDuplicates: true
            });
        }
        if($("#project")) {
            $("#project").tokenInput("autocomplete.php?t=project", {
                theme: "hcg",
                allowCustomEntry: true,
                preventDuplicates: true
            });
        }

        // location/date
        if(category == "project") {
            makeLocationDateModule("Date", false, false,  true);
        }
        else if(category == "person") {
            initLocationDateModule("#birth");
            initLocationDateModule("#death");
            $(".isdead").click(function() {
                if($(this).is(":checked")) {
                    $("#death").fadeIn();
                }
                else {
                    $("#death").fadeOut();  
                }
            });

            makeLocationDateModule("From", "To", "Moved?", true);
        }
        else if(category == "event") {
            makeLocationDateModule("Start Date", "End Date", false, false);
        }
        else if(category == "organization") {
            makeLocationDateModule("Date Founded", "End Date", "Shut down?", false);
        }

        // narrative
        makeNarrativeModule();
    }


    // step 1 initialization
    $("#name").change(function() {
        validateStep1();
    });
    $("#name").bind("keydown", function(event) {
        if(event.keyCode === $.ui.keyCode.TAB &&
            $(this).data("autocomplete").menu.active) {
            event.preventDefault();
        }
    })
    .autocomplete({
        source: function(request, callback) {
            $.getJSON("autocomplete.php", { t: "all", q: request.term }, callback);
        },
        focus: function( event, ui ) {
            $( "#name" ).val( ui.item.name );
            return false;
        },
        select: function( event, ui ) {
            $("#name").val( ui.item.name );
            $("#name-id").val( ui.item.id );
            $("#categories").val( ui.item.category );
            $("#categories").trigger("change");
            
            // fill in form from db

            return false;
        },
        minLength: 1
    })
    .data( "autocomplete" )._renderItem = function( ul, item ) {
        var re = new RegExp(this.term, "i");
        var match = item.name.match(re);
        var t = item.name.replace(re,"<span class='autocomplete-name-term-highlight'>" + 
                    match + 
                    "</span>");
        return $( "<li></li>" )
            .data( "item.autocomplete", item )
            .append( "<a><span class='autocomplete-name'>" + t + "</span><span class='autocomplete-name-category'>" + upperCaseWord(item.category) + "</span></a>" )
            .appendTo( ul );
    };

    $("#tags").tokenInput("autocomplete.php?t=tags", {
        theme: "hcg",
        allowCustomEntry: true,
        preventDuplicates: true,
        hintText: "Search for predefined tags or suggest new ones",
        onAdd: validateStep1,
        onDelete: validateStep1
    });

    $("#categories").change(function() {
        validateStep1();
        
        var category = $("#categories option:selected").val();
        if(category != '') {
            if(step1Complete) {
                // play loading animation
                $("#loader").fadeIn(200);
                $("#step-2").animate({opacity: 0.5},300);
            }
            // replace step 2 with form
            $.get("forms/form-"+category+".html", function(data) {
                $("#placeholder").html(data);
                // load the data
                $("#step-2 #required-fields").html($("#required-fields", "#placeholder").html());
                $("#step-2 #optional-fields").html($("#optional-fields", "#placeholder").html());

                $("#step-2 input").not("input[type=submit]").val('');
                $("#step-2 textarea").val('');

                if(step1Complete) {
                    $("#loader").fadeOut(200);
                    $("#step-2").animate({opacity: 1.0},300);
                }

                formInit(category);
            });
        }
    });

    // submit form on validation
    var options = {
        beforeSubmit: function() {
            if($("#inputform").validate().form()) {
                $("#inputform").animate({opacity: 0.3}, 300);
                $("#loader").fadeIn(200);
                
                $(".nosubmit").attr("name", "STUPID");
                
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
    
    validateStep1();
});
