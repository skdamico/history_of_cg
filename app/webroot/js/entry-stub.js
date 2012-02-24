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
            hintText: 'Please further categorize this entry'
        });

        if($entryId.val() !== '') {
            // find tags by entry id
            getTags($entryId.val(), $tags);
        }
    }

    initStubs();
});
