$(function() {
    function getTags(id) {
        $.getJSON('/entries/get/'+id+'/tags', function(data) {
            if(data !== null) {
                $('#tags').tokenInput('clear');

                $.each(data, function(i, tag) {
                    $('#tags').tokenInput('add', tag.Tag);
                });
            }
        });
    }

    // ----------------- TAGS ---------------
    $('#tags').tokenInput('/tags/fetch/', {
        theme: 'hcg',
        allowCustomEntry: true,
        preventDuplicates: true,
        hintText: "Please further categorize this entry"
    });

    if($('.entry-id').val() !== '') {
        getTags($('.entry-id').val());
    }
});
