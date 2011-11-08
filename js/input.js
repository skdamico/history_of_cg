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
        var tagsValid = ($("#tags").val().split(",").length > 0);
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
        a += "value=''></option>";
        $(day_id).append(a);

        // append rest
        for(var i=0; i<numDays; i++) {
            a = "<option";
            if(selectedDay != "" && parseInt(selectedDay) == (i+1)) {
                a += " selected='selected'";
            }
            a += "value='"+(i+1)+"'>"+(i+1)+"</option>";
            $(day_id).append(a);
        }
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
            locationModule.children(".date").children("label").html(dateName);
        }
        if(endDateOption) {
            locationModule.children(".end-date-option").children("span").html(endDateOption);
        }
        if(endDateName && !endDateOption) {
            locationModule.children(".end-date").show();
            locationModule.children(".end-date").children("label").html(endDateName);
        }
        locationModule.fadeIn();
        $(where).append(locationModule);
        if(allowMultiple) {
            $(where+" .add-location-date:last").show().click(function() { makeLocationDateModule(dateName, endDateName, allowMultiple, where); });
        }

        // init dates
        var yearCreated = $(where+" .start-year:last");
        var monthCreated = $(where+" .start-month:last");
        var dayCreated = $(where+" .start-day:last");
        
        if(endDateName) {
            var yearEnd = $(where+" .end-year:last");
            var monthEnd = $(where+" .end-month:last");
            var dayEnd = $(where+" .end-day:last");
        }

        populateYears(yearCreated);
        populateMonths(monthCreated);

        if(endDateName) {
            populateYears(yearEnd);
            populateMonths(monthEnd);
        }
        
        // create correct number of days if month has changed
        $(monthCreated).change(function() {
            populateDays(yearCreated, monthCreated, dayCreated);
            
            // if there is a date range, auto populate the end date
            if(endDateName && $(monthEnd).val() == '') {
                $(monthEnd).val($(this).val());
                populateDays(yearEnd, monthEnd, dayEnd);
            }
        });
        $(monthEnd).change(function() {
            populateDays(yearEnd, monthEnd, dayEnd);
        });
        // auto populate the end date
        $(dayCreated).change(function() {
            if(endDateName && $(dayEnd).val() == '') {
                $(dayEnd).val($(this).val());
            }
        });

        if(endDateOption) { 
            var currentLocModule = $(where+" .location-date-module:last");
            currentLocModule.children(".end-date-option input[type=checkbox]").click(function() {
                if($(this).is(":checked")) {
                    currentLocModule.children(".end-date").fadeIn();
                }
                else {
                    currentLocModule.children(".end-date").fadeOut();   
                }
            });
        }
        // init locations
        var country = $(where+" .country:last");
        var state = $(where+" .state:last");
        var city = $(where+" .city:last");
        print_country(country);
        $(country).change(function() {
            print_state(state, $(this).children("option").index($(country).children("option:selected")));
        });
        $(city).focus(function() {
            if($(this).hasClass("message")) {
                $(this).val("");
                $(this).removeClass("message");
            }
        })
        .blur(function() {
            if($(this).val() == '') {
                $(this).addClass("message");
                $(this).val("City");
            }
        });
    }

    // Clones and prepares a narrative module
    function makeNarrativeModule() {
        var narrativeModule = $("#narrative-module").clone();
        narrativeModule.removeAttr("id");
        narrativeModule.fadeIn();
        $("#narrative-form").append(narrativeModule);
        $("#narrative-form .add-narrative:last").click(function() { makeNarrativeModule() });
    }

    // Will try to auto fill the location of an organization
    function autoFillLocation() {
        // grab first org
        var name = $("#organization").val().split(",")[0];
        name = name.replace("\'", "");
        
        var locModule = $("#location-form .location-date-module:first");
        
        if(name != '' || name != null) {
            getLocation("organization", name, function(data) {
                if(data != "[]") {
                    var loc = $.parseJSON(data);
                    loc = loc[0];
                    // Fill in form
                    $(".country", locModule).val(loc.country);
                    $(".country", locModule).trigger("change");
                    
                    if(loc.state != null) {
                        $(".state", locModule).val(loc.state);
                    }
                    if(loc.city != null) {
                        $(".city", locModule).trigger("focus").val(loc.city);
                    }
                    if(loc.start_year != null) {
                        $(".start-year", locModule).val(loc.start_year);
                        $(".start-year", locModule).trigger("change");
                    }
                    if(loc.start_month != null) {
                        $(".start-month", locModule).val(loc.start_month);
                        $(".start-month", locModule).trigger("change");
                    }
                    if(loc.start_day != null) {
                        $(".start-day", locModule).val(loc.start_day);
                    }

                }
                else {
                    // reset
                    $(".country", locModule).val('');
                    $(".country", locModule).trigger("change");
                    $(".state", locModule).val('');
                    $(".city", locModule).val('').trigger("blur");
                    $(".start-year option:eq(0)", locModule).attr("selected", "selected");
                    $(".start-year", locModule).trigger("change");
                    $(".start-month", locModule).val('');
                    $(".start-month", locModule).trigger("change");
                    $(".start-day", locModule).val('');
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
            makeLocationDateModule("Date", false, false, false, "#birth");
            makeLocationDateModule("Date", false, false, false, "#death");
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
