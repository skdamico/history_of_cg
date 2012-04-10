$(function() {
    function getTags(id, tags) {
        $.getJSON('/entries/get/'+id+'/tags', function(data) {
            if(data !== null) {
                $(tags).tokenInput('clear');

                $.each(data, function(i, tag) {
                    $(tags).tokenInput('add', tag.Tag);
                });
            }
        });
    }

    // ----------------- TAGS ---------------

    function initStubs() {
        var $tags = $('#main-stub .all-fields .entry-tags .tags');
        var $entryId = $('#main-stub .all-fields .entry-name .entry-id');

        // init tags field
        $tags.tokenInput('/tags/fetch/', {
            theme: 'hcg',
            allowCustomEntry: true,
            preventDuplicates: true,
            hintText: 'Enter tags to describe this entry',
        });

        if($entryId.val() !== '') {
            // find tags by entry id
            getTags($entryId.val(), $tags);
        }

        // initialize author autocomplete field
        $('#main-stub .all-fields .entry-name #entryName').bind("keydown", function(event) {
          if(event.keyCode === $.ui.keyCode.TAB &&
            $(this).data("autocomplete").menu.active) {
            event.preventDefault();
          }
        })
        .autocomplete({
          source: function(request, callback) {
            $.getJSON("/entries/get_by_phrase/", { t: "all", q: request.term }, callback);
          },
          focus: function( event, ui ) {
            $( this ).val( ui.item.name );
            return false;
          },
          select: function( event, ui ) {
            //redirect to content page for that entry
            window.location = "/entries/view/"+ui.item.slug;

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

    initStubs();
});
