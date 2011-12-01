$(document).ready(function() {
    // Get pagename
    var path = window.location.pathname; 
    var pagename = path.substring(path.lastIndexOf("/") + 1)
    pagename = pagename.toLowerCase();

    $("#searchForm").submit(function() {
        return false;
    });

    $(".searchBox").bind("keydown", function(event) {
        if(event.keyCode === $.ui.keyCode.TAB &&
            $(this).data("autocomplete").menu.active) {
            event.preventDefault();
        }
        if(event.keyCode === $.ui.keyCode.ENTER) {
           var searchtext = $(this).val();
           var inDB = false;

           // check if item is in db
           $.getJSON("autocomplete.php", { t: "all", q: searchtext }, function(d) {
               $.each(d, function(i, item) {
                    if(item.name == searchtext) {
                        inDB = true;
                        window.location = "content.php?c="+item.category+"&q="+item.id; 
                        return;
                    }
               });

               
               if(!inDB) {
                   //Prompt user that item is not in the db
                   var addUser = confirm("'"+searchtext+"' cannot be found. Create an entry?");
                   if(addUser) {
                       window.location = "entry.php?n="+searchtext;
                   }
               }
           });


           event.preventDefault();
           return false;
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

        var innerContent = "<a><span class='autocomplete-name'>"+ t +"</span><span class='autocomplete-category-box "+item.category+"'></span>";

        if(pagename === "" || pagename === "index.php") {
            innerContent += "<span class='autocomplete-category'>" + upperCaseWord(item.category) + "</span>";
        }

        innerContent += "</a>";

        return $( "<li></li>" )
            .data( "item.autocomplete", item )
            .append( innerContent )
            .appendTo( ul );
    };
});
