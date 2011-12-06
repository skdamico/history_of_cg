var YEAR_MIN = 1950;
var YEAR_MAX = new Date().getFullYear();
var timelineWidth = 0;
var dividerWidth = 0;

var scrollbar;
var content; 
var events;
var handleHelper;

//size scrollbar and handle proportionally to scroll distance
function sizeScrollbar() {
    var remainder = events.width() - content.width();
    var proportion = remainder / events.width();
    var handleSize = content.width() - ( proportion * content.width() );
    scrollbar.find( ".ui-slider-handle" ).css({
        width: handleSize,
        "margin-left": -handleSize / 2
    });
    handleHelper.width( "" ).width( scrollbar.width() - handleSize );
}

//reset slider value based on scroll content position
function resetValue() {
    var remainder = content.width() - events.width();
    var leftVal = events.css( "margin-left" ) === "auto" ? 0 :
        parseInt( events.css( "margin-left" ) );
    var percentage = Math.round( leftVal / remainder * 100 );
    scrollbar.slider( "value", percentage );
}

//if the slider is 100% and window gets larger, reveal content
function reflowContent() {
    var showing = events.width() + parseInt( events.css( "margin-left" ), 10 );
    var gap = content.width() - showing;
    if ( gap > 0 ) {
        events.css( "margin-left", parseInt( events.css( "margin-left" ), 10 ) + gap );
    }
}

function initControls() {
    content = $(".timeline #content");
    events = $(".timeline #content .events");

    //build slider
    scrollbar = $( "#slider" ).slider({
        slide: function( event, ui ) {
            if ( events.width() > content.width() ) {
                events.css( "margin-left", Math.round(
                    ui.value / 100 * ( content.width() - events.width() )
                ) + "px" );
            } else {
                events.css( "margin-left", 0 );
            }
        },
        animate: true
    });
    
    //append icon to handle
    handleHelper = scrollbar.find( ".ui-slider-handle" )
    .mousedown(function() {
        scrollbar.width( handleHelper.width() );
    })
    .mouseup(function() {
        scrollbar.width( "100%" );
    })
    .wrap("<div class='ui-handle-helper-parent'></div>").parent();
    
    //change overflow to hidden now that slider handles the scrolling
    content.css( "overflow", "hidden" );
    
    
    //change handle position on window resize
    $( window ).resize(function() {
        resetValue();
        sizeScrollbar();
        reflowContent();
    });
    //init scrollbar size
    setTimeout( sizeScrollbar, 10 );//safari wants a timeout
}

function mapEventsToYear(assoc, map, category) {
    if(assoc != null) {
        $.each(assoc, function(i, item) {
            if(map[item.year] == null) {
                map[item.year] = new Array();
            }

            item.category = category;
            map[item.year].push(item);
        });
    }
}

function init() {
    var entryName = $(".entryInfo .entryName").val();
    var entryId = $(".entryInfo .entryId").val();
    var entryCategory = $(".entryInfo .entryCategory").val();

    var $events = $(".timeline #content .events");

    $.getJSON("gettimeline.php?q=all&for="+entryId+"&c="+entryCategory, function(data) {
        if(data == null) {
            return;
        }
        var map = {};

        mapEventsToYear(data.associations.person, map, "person");
        mapEventsToYear(data.associations.project, map, "project");
        mapEventsToYear(data.associations.organization, map, "organization");
        mapEventsToYear(data.associations.event, map, "event");

        var year = YEAR_MIN;
        while(year <= YEAR_MAX) {
            var markup = "<li class='divider'><ul class='column'>"
            
            if(map[year] != undefined) {
                for(var i=0; i<map[year].length; i++) {
                    var currentItem = map[year][i];
                    markup += "<li class='timeline-event "+currentItem.category+"' data-name='"+currentItem.name+"'><a href='content.php?q="+currentItem.id+"&c="+currentItem.category+"'></a></li>"
                }
            }

            markup += "<li><div class='name'>"+year+"</div><div class='tick'></div></li></ul></li>";
            $events.append(markup);

            year++;
        }

        // Setup tooltip on hover
        $(".timeline-event a", $events).hover(
            function() {
                var $tooltip = $("#tooltip");
                $tooltip.html("<span>"+$(this).parent().attr("data-name")+"</span>");
                $tooltip.css({'left': $(this).parent().offset().left - ($tooltip.width()/2), 
                              'top': $(this).parent().offset().top - ($tooltip.height() + $(this).parent().height())});
                $tooltip.show("drop", { direction: "up" }, 200);
            },
            function() {
                $("#tooltip").hide("drop", { direction: "up"}, 200);
            }
        );

        // Set the width depending on content size
        var dividerMargin = $(".divider", $events).css("marginRight");
        dividerWidth = (parseInt(dividerMargin.substring(0,dividerMargin.indexOf("px"))) + $(".divider", $events).width());
        timelineWidth = (YEAR_MAX - YEAR_MIN + 1) * dividerWidth;

        $events.css("width", timelineWidth);

        initControls();
        //gotoMostPopulated();
    });
}

function gotoMostPopulated() {
    var mostLength = 0;
    var most = 0;

    $(".divider").each(function(i) {
        var currentEvents = $(this).find(".timeline-event").length;
        if(currentEvents > mostLength) {
            mostLength = currentEvents;
            most = i;
        }
    });

    if(most != 0) {
       events.css("margin-left", (most * dividerWidth) + "px");
    }
}

$(document).ready(function() {
    init();

});
