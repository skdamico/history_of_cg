$(document).ready(function() {
    
    $(".searchBox").bind("keydown", function(event) {
        if(event.keyCode === $.ui.keyCode.TAB &&
            $(this).data("autocomplete").menu.active) {
            event.preventDefault();
        }
        if(event.keyCode === $.ui.keyCode.ENTER) {
            if(!$(this).data("autocomplete").menu.active) {
               //Prompt user that item is not in the db
               //Add item?
            }
        }
    })
    .autocomplete({
        source: function(request, callback) {
            $.getJSON("autocomplete.php", { t: "all", q: request.term }, callback);
        },
        focus: function( event, ui ) {
            $( ".searchBox" ).val( ui.item.name );
            return false;
        },
        select: function( event, ui ) {
            //redirect to content page for that entry
            window.location = "content.php?c="+ui.item.category+"&q="+ui.item.id;

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
});
