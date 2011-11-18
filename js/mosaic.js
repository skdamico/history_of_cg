$(function() {
    var entryName = $(".entryInfo .entryName").val();
    var entryId = $(".entryInfo .entryId").val();
    var entryCategory = $(".entryInfo .entryCategory").val();


    function initMosaic() {
        var tiles = "";
        $.getJSON("getmosaic.php?q=all&for="+entryId+"&c="+entryCategory, function(data) {
            tiles += createTiles("association", "person", data.associations.person);
            tiles += createTiles("association", "project", data.associations.project);
            tiles += createTiles("association", "organization", data.associations.organization);
            tiles += createTiles("association", "event", data.associations.event);

            $("#mosaic-container").append(tiles);
        });
    }

    function createTiles(type, category, data) {
        var t = "";
        if(data != null) {
            $.each(data, function(i, item) {
                t += createTile(type, category, item);
            });
        }
        return t;
    }

    function createTile(type, category, tile) {
        var t = "<li class='tile "+type+" "+category+"' data-id='"+category+"'>";
        t += "<a href='content.php?c="+category+"&q="+tile.id+"'>"+tile.name+"</a>";
        t += "</li>";
        return t; 
    }

    initMosaic();
});
