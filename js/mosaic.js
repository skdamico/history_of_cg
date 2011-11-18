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

            tiles += createTiles("narrative", "", data.narratives);

            $(".mosaic-container").append(tiles);

            var factor = 1/5;  // approximate width-to-height ratio
            $(".mosaic-container li.narrative").each(function() {
                $(this).children("p").css('font-size', $(this).width() / ($(this).children("p").text().length * factor) + 'px');
            });
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
        
        if(type == "narrative") {
            t += "<p>"+tile.narrative+"</p>";
            t += "<a href='content.php?c=person&q="+tile.author_id+"'><span>"+tile.author+"</span></a>";

        }
        else {
            t += "<a href='content.php?c="+category+"&q="+tile.id+"'><span>"+tile.name+"</span></a>";
        }
        t += "</li>";

        return t; 
    }

    initMosaic();
});
