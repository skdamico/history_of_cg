$(function() {
    /***
     * fade out all flash messages on click
     */
    $('#flashMessage').click(function() {
        $(this).fadeOut();
    });

    setTimeout(function() { $("#flashMessage").fadeOut(); }, 4000);
});
