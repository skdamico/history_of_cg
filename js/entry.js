$(function() {
    var preview = false;

    // Initialize tooltips
    initTooltip("#inputform :input[title]");
    
    // initialize data population first
    // load edit data if values are prepopulated
    if($("#name").val() != "" && $("#name-id").val() != "" && $("#categories").val() != "") {
        edit($("#name-id").val(), $("#name").val(), $("#categories").val());    
    }
    
    var loc_module_config = $.parseJSON('{'+
                                        '"person":{"date_name":"From", "end_date_name":"To", "end_date_option":"Moved?", "multiple":true, "where":"#location-form"},'+
                                        '"project":{"date_name":"Date", "end_date_name":false, "end_date_option":false, "multiple":true, "where":"#location-form"},'+
                                        '"organization":{"date_name":"Date Founded", "end_date_name":"End Date", "end_date_option":"Shut down?", "multiple":false, "where":"#location-form"},'+
                                        '"event":{"date_name":"Start Date", "end_date_name":"End Date", "end_date_option":false, "multiple":false, "where":"#location-form"}'+
                                        '}');

    function validateStep1() {
        var nameValid = ($("#name").val().trim() != '');
        var tagsValid = ($("#tags").val().split(",").length > 1);
        var categoriesValid = ($("#categories option:selected").val().trim() != '');

        if(nameValid && tagsValid && categoriesValid) {
            $("#step-2").fadeIn(200);
            return true;
        }
        else {
            $("#step-2").fadeOut(200);
            return false;
        }
    }


    function populateYears(id) {
        var date = new Date();
        var currentyear = parseInt(date.getFullYear());
        var yearmin = 1900;

        var yiter = yearmin;
        while (yiter <= currentyear) {
            var newOpt = "<option value='"+yiter+"'";
            if(yiter == currentyear)
                newOpt += " selected='selected'";
            newOpt += ">"+yiter+"</option>";
            
            $(id).prepend(newOpt);

            yiter++;
        }
    }

    function populateMonths(id) {
        var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        
        // append blank for validation
        $(id).append("<option value='0'></option>");
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
        a += " value='0'></option>";
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
                }
                else {
                    $(currentLocModule).children(".end-date").fadeOut();
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

    // Allows a JSON object to be inputted
    // form: date_name, end_date_name, end_date_option, multiple, where
    function makeLocationDateModuleJSON(obj) {
        makeLocationDateModule(obj.date_name, obj.end_date_name, obj.end_date_option, obj.multiple, obj.where);
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
                .append( "<a><span class='autocomplete-name'>" + t + "</span><span class='autocomplete-category-box person'></span></a>" )
                .appendTo( ul );
        };
    }

    function makeSourceModule() {
        var sourceModule = $("#source-module").clone();
        sourceModule.removeAttr("id");
        sourceModule.fadeIn();
        $("#sources").append(sourceModule);
        $("#sources .add-source:last").click(function() { makeSourceModule() });
    }

    // Reset the values in a location-date module
    // Input: DOM Object
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
        if(!$(".end-date-option", where).is(":hidden")) {
            $(".end-date-option input[type=checkbox", where).removeAttr("checked");
            $(".end-date", where).hide();
            $(".end-year option:eq(0)", where).attr("selected", "selected");
            $(".end-year", where).trigger("change");
            $(".end-month", where).val('');
            $(".end-month", where).trigger("change");
            $(".end-day", where).val('');
        }
    }

    // Fill in values given a JSON containing location-date data
    // Input: JSON, DOM Object
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
        if(data.is_end_date != null && parseInt(data.is_end_date) != 0) {
            if(data.end_year != null) {
                $(".end-year", where).val(data.end_year);
                $(".end-year", where).trigger("change");

                if($(".end-date-option", where) && !$(".end-date-option", where).is(":hidden")) {
                    //Show checkbox as checked and display end date
                    $(".end-date-option input[type=checkbox]", where).attr("checked", "checked");
                    $(".end-date", where).fadeIn();
                }
            }
            if(data.end_month != null) {
                $(".end-month", where).val(data.end_month);
                $(".end-month", where).trigger("change");
            }
            if(data.end_day != null) {
                $(".end-day", where).val(data.end_day);
            }
        }
    }

    // Will try to auto fill the location of an organization
    // ** Specific to organization 
    // Note: generalize this eventually
    function autoFillLocation() {
        // grab first org
        var name = $("#organization").val();
        name = name.split(",")[0];
        name = name.replace("\'", "");
        
        var locModule = $("#location-form .location-date-module:first");
        
        if(name != '' && name != null) {
            getLocation("organization", name, function(data) {
                if(data != null && data.location != null) {
                    loc = data.location[0];
                    
                    // if locModule is filled make new loc-date module
                    if($(".country", locModule).val() != '' || $(".state", locModule).val() != '' || $(".city", locModule).val() != '') {
                        makeLocationDateModuleJSON(loc_module_config.project);
                        locModule = $("#location-form .location-date-module:last");
                        locModule.insertBefore($("#location-form .location-date-module:eq(0)"));
                    }

                    fillLocation(loc, locModule);
                }
            })
        }
    }


    // Create and populate location-date modules on the form
    // Input: JSON
    function fillLocations(data) {
        var category = $("#categories").val();

        var loc_module_obj = null;

        if(category == "person") loc_module_obj = loc_module_config.person;
        else if(category == "project") loc_module_obj = loc_module_config.project;
        else if(category == "organization") loc_module_obj = loc_module_config.organization;
        else if(category == "event") loc_module_obj = loc_module_config.event;

        $.each(data, function(i,loc) {
            //if not first make a loc/date module
            var currentLocModule;
            if(i > 0) {
                makeLocationDateModuleJSON(loc_module_obj);
                currentLocModule = $(".location-date-module:last", $(loc_module_obj.where));
            }
            else {
                currentLocModule = $(".location-date-module:first", $(loc_module_obj.where));
            }

            fillLocation(loc, currentLocModule);
        });
    }

    // Fill out the main form 
    // Input: JSON
    function fillMainForm(data) {
        var category = $("#categories").val();

        if(category == "person") {
            if(data.birth_location_date) {
                fillLocation(data.birth_location_date, $("#birth"));
            }
            if(data.death_location_date) {
                fillLocation(data.death_location_date, $("#death"));

                $(".isdead").attr("checked", "checked");
                $("#death").show();
            }
        }
        else if(category == "project") {
        }
        else if(category == "organization") {

        }
        else if(category == "event") {
        
        }

        // all have description
        $("#description").val(data.description);
    }

    // Fill all association inputs with tokens
    // Input: JSON
    function fillAssociations(data) {
        if(data.organization && $("#organization")) {
            $.each(data.organization, function(i, org) {
                $("#organization").tokenInput("add", org);
            });
        }
        if(data.person && $("#person")) {
            $.each(data.person, function(i, person) {
                $("#person").tokenInput("add", person);
            });
        }
        if(data.project && $("#project")) {
            $.each(data.project, function(i, project) {
                $("#project").tokenInput("add", project);
            });
        }
        if(data.event && $("#event")) {
            $.each(data.event, function(i, e) {
                $("#event").tokenInput("add", e);
            });
        }
    }

    function fillNarrative(narrative, module) {
        if(narrative.id != null && narrative.id != "") {
            $(".narrative-id", module).val(narrative.id);
        }
        if(narrative.narrative != null && narrative.narrative != "") {
            $(".narrative", module).val(narrative.narrative);
        }
        if(narrative.author != null) {
            $(".author", module).val(narrative.author);
            $(".author-id", module).val(narrative.author_id);
        }
    }

    // Create and fill narrative modules with data
    // Input: JSON
    function fillNarratives(data) {
        $.each(data, function(i,narrative) {
            //if not first make a narrative module
            var currentNarrativeModule;
            if(i > 0) {
                makeNarrativeModule();
                currentNarrativeModule = $(".narrative-module:last", $("#narrative-form"));
            }
            else {
                currentNarrativeModule = $(".narrative-module:first", $("#narrative-form"));
            }
            
            fillNarrative(narrative, currentNarrativeModule);
        });
    }

    function fillSource(source, module) {
        if(source.id != null) {
            $(".source-id", module).val(source.id);
        }
        if(source.name != null) {
            $(".source", module).val(source.name);
        }
        if(source.url != null) {
            $(".url", module).val(source.url);
        }
    }

    function fillSources(data) {
        $.each(data, function(i, source) {
            var currentSourceModule;
            if(i > 0) {
                makeSourceModule();
                currentSourceModule = $(".source-module:last", $("#sources"));
            }
            else {
                currentSourceModule = $(".source-module:first", $("#sources"));
            }

            fillSource(source, currentSourceModule);
        });
    }

    function edit(id, name, category) {
        $("#name").val( name );
        $("#name-id").val( id );
        $("#categories").val( category );
        changeEntryHairline(category);
        $("#inputform").animate({opacity: 0.5}, 200);
        $("#loader").fadeIn(200);

        formReset(function() {
            // fill in form from db
            $.getJSON("get.php?action=all&t="+category+"&q="+id, function(data) {
                if(data != null) {

                    // populate tags first to fire validation and form init
                    if(data.tags) {
                        // clear tags
                        $("#tags").tokenInput("clear");
                        // add all tags
                        $.each(data.tags, function(i, tag) {
                            $("#tags").tokenInput("add", tag);
                        });
                    }
                        
                    // main
                    if(data.main) {
                        fillMainForm(data.main);
                    }

                    // locations
                    if(data.location) {
                        fillLocations(data.location);

                    }

                    // associations
                    if(data.associations) {
                        fillAssociations(data.associations); 
                    }

                    // narratives
                    if(data.narratives) {
                        fillNarratives(data.narratives);
                    }

                    // sources
                    if(data.sources) {
                        fillSources(data.sources);
                    }
                }

                $("#loader").fadeOut(200);
                $("#inputform").animate({opacity: 1.0}, 200);
                validateStep1();
            });
        });
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
            makeLocationDateModuleJSON(loc_module_config.project);
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

            makeLocationDateModuleJSON(loc_module_config.person);
        }
        else if(category == "event") {
            makeLocationDateModuleJSON(loc_module_config.event);
        }
        else if(category == "organization") {
            makeLocationDateModuleJSON(loc_module_config.organization);
        }

        // narrative
        makeNarrativeModule();

        // source
        makeSourceModule();
    }

    function formReset(callback) {
        var category = $("#categories").val();
        // replace step 2 with form
        $.get("forms/form-"+category+".html", function(data) {
            $("#placeholder").html(data);
            // load the data
            $("#step-2 #required-fields").html($("#required-fields", "#placeholder").html());
            $("#step-2 #optional-fields").html($("#optional-fields", "#placeholder").html());

            $("#step-2 #sources").html("");

            $("#step-2 input").not("input[type=submit]").not("input[type=checkbox]").val('');
            $("#step-2 textarea").val('');

            $("#placeholder").html("");

            formInit(category);
            
            initTooltip("#step-2 :input[title]");

            if(callback) {
                callback();
            }
        });
    }

    function initTooltip(selector) {
        $(selector).bind({ 
            focus : function() {
                var $tooltip = $("#tooltip");
                $tooltip.html($(this).attr("title"));
                $tooltip.css("left", $(this).position().left + 320).css("top", $(this).position().top - 5);
                $tooltip.stop().fadeIn(500);
            },
            blur : function() {
               $("#tooltip").stop().fadeOut(500);
            }
        });
    }

    // step 1 initialization
    $("#name").change(function() {
        validateStep1();
        $("#name-id").val("");
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
            //populate form with data
            edit(ui.item.id, ui.item.name, ui.item.category);

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
            .append( "<a><span class='autocomplete-name'>" + t + "</span><span class='autocomplete-category "+item.category+"'>" + upperCaseWord(item.category) + "</span></a>" )
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
        var category = $("#categories option:selected").val();

        changeEntryHairline(category);
        validateStep1();

        if(category != '') {
            // play loading animation
            $("#loader").fadeIn(200);
            $("#step-2").animate({opacity: 0.5},300);
            
            formReset(function() {
                $("#loader").fadeOut(200);
                $("#step-2").animate({opacity: 1.0},300);
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
            $("#inputform").animate({opacity: 1.0},300).addClass("spacer");
            $("#target").fadeIn(400).delay(5000).fadeOut(400, function() { $("#inputform").removeClass("spacer"); });

            if(preview) {
                window.open("content.php?c="+$("#categories").val()+"&q="+$("#name-id").val());
                preview = false;
            }
        },
    };

    $("#inputform").ajaxForm(options);

    $("#save").click(function() {
        $("#inputform").submit();
    });
    $("#preview").click(function() {
        preview = true;

        $("#inputform").submit();
    });
    $("#clearForm").click(function() {
        formReset();
        $("#name, #name-id, #categories").val("");
        $("#tags").tokenInput("clear").blur();
    });
});
