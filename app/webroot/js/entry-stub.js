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
        $('.entry-id').each(function() {
            var $tags = $(this).parent().siblings('.entry-tags').children('.tags');

            // init tags field
            $tags.tokenInput('/tags/fetch/', {
                theme: 'hcg',
                allowCustomEntry: true,
                preventDuplicates: true,
                hintText: 'Please further categorize this entry'
            });

            if($(this).val() !== '') {
                // find tags by entry id
                getTags($(this).val(), $tags);
            }
        });
    }

    initStubs();
});
