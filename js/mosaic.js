
/****** top-left corner stamp *******/

$.Isotope.prototype._masonryResizeChanged = function() {
    return true;
};

$.Isotope.prototype._masonryReset = function() {
    // layout-specific props
    this.masonry = {};
    this._getSegments();
    var i = this.masonry.cols;
    this.masonry.colYs = [];
    while (i--) {
      this.masonry.colYs.push( 0 );
    }

    if ( this.options.masonry.cornerStampSelector ) {
      var $cornerStamp = this.element.find( this.options.masonry.cornerStampSelector ),
          stampWidth = $cornerStamp.outerWidth(true) - ( this.element.width() % this.masonry.columnWidth ),
          cornerCols = Math.ceil( stampWidth / this.masonry.columnWidth ),
          cornerStampHeight = $cornerStamp.outerHeight(true);
      for ( i = 0; i < Math.max( this.masonry.cols - cornerCols, cornerCols ); i++ ) {
          this.masonry.colYs[i] = cornerStampHeight;
      }
    }
};


$(function() {
    var entryName = $(".entryInfo .entryName").val();
    var entryId = $(".entryInfo .entryId").val();
    var entryCategory = $(".entryInfo .entryCategory").val();

    var $mosaic = $(".mosaicBody .mosaicContainer");

    function initMosaic() {
        var tiles = "";

        // grab all mosaic tiles
        $.getJSON("getmosaic.php?q=all&for="+entryId+"&c="+entryCategory, function(data) {
            tiles += createTiles("association", "person", data.associations.person);
            tiles += createTiles("association", "project", data.associations.project);
            tiles += createTiles("association", "organization", data.associations.organization);
            tiles += createTiles("association", "event", data.associations.event);

            tiles += createTiles("narrative", "", data.narratives);

            $mosaic.append(tiles);

            $mosaic.isotope({
                itemSelector: ".tile",
                animationEngine: "best-available",
                masonry: {
                    columnWidth: 265,
                    cornerStampSelector: ".dynamic"
                },
                resizable: true
            });
            $mosaic.isotope("shuffle");

            // create tag lists
            createTagList("personTagList", data.associations.person);
            createTagList("projectTagList", data.associations.project);
            createTagList("organizationTagList", data.associations.organization);
            createTagList("eventTagList", data.associations.event);

            // activate category filtering
            $(".entryMast .catBar .category a").click(function() {
                var $parent = $(this).parent("li");

                if($parent.hasClass("selected")) {
                    // remove selected
                    $parent.removeClass("selected");
                    
                    // remove filters
                    $mosaic.isotope({filter: "*"});

                    // hide tag dropdown
                    $("div", ".tagLists").animate({opacity: "hide", height: "hide"});

                    // repopulate description
                    var $dynamic = $(".mosaicContainer .dynamic");
                    $dynamic.html($(".entryInfo .entryDescription").html());

                    // repopulate hairline
                    $dynamic.removeClass("person project organization event");
                    $dynamic.addClass($(".entryInfo .entryCategory").val());
                }
                else {
                    // add selected class
                    $(".entryMast .catBar .category").removeClass("selected");
                    $parent.addClass("selected");

                    // filter by category
                    var selector = $(this).attr("data-filter");
                    $mosaic.isotope({filter: selector});
                    
                    // create list of filter
                    var $dynamic = $(".mosaicContainer .dynamic");
                    $dynamic.html("<p>List of "+$(this).html().toLowerCase()+" in relation w/ "+$(".entryInfo .entryName").val()+"</p><ul class='filterList'></ul>");
                    $(".mosaicContainer "+selector+".association a").each(function() {
                        $dynamic.children("ul").append("<li><a href='"+$(this).attr("href")+"'>"+$(this).children("span").html()+"</a></li>");
                    });

                    // toggle tag filter list
                    $("div:not("+selector+"TagList)", ".tagLists").animate({opacity: "hide", height: "hide"});
                    $(selector+"TagList", ".tagLists").animate({opacity: "show", height: "show"});

                    // create hairline
                    $dynamic.removeClass("person project organization event");
                    $dynamic.addClass(selector.replace(/\./g, ""));
                }

                return false;
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
        var t = "<li class='tile "+type+" "+category;

        if(tile.tags) {
            // add tags as classes
            $.each(tile.tags, function(i, tag) {
                t += " " + tag;
            });
        }
        t += "'>";

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

    function createTagList(className, associations) {
        $(".tagLists").append("<div class='"+className+"' style='display:none;'></div>");
        
        var tags = [];

        if(associations != null) {
            $.each(associations, function(i, item) {
                if(item.tags != null)
                    tags = tags.concat(item.tags);
            });
            tags = $.unique(tags); 
            
            tags.sort(function(a, b) {
               var compA = a.toUpperCase();
               var compB = b.toUpperCase();
               return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            });
            
        }
        var $list = $("."+className, ".tagLists");
        var temp = '<ul><li class="all"><input type="checkbox" data-filter="*" checked="checked" />All</li>';
        $.each(tags, function(i, tag) {
            var isNewCol = (i+1) % 4;
            if(isNewCol == 0) {
                temp += '</ul><ul>'
            }
            
            temp += "<li><input type='checkbox' data-filter='."+tag+"'/>"+tag+"</li>";

        });
        temp += '</ul>';

        $list.append(temp);

        // Handle click events
        $list.find("input[type=checkbox]").click(function() {
            var filters = [$(".catBar .selected a").attr("data-filter")];
            
            // Check for All
            if($(this).attr("data-filter") == "*") {
                $(this).attr("checked", "checked");
                $list.find("li:not(.all) input").removeAttr("checked");

                var selector = filters.join("");
                $(".mosaicContainer").isotope({filter: selector});
            }
            // All is not checked
            else {
                // uncheck "All"
                var $allCheckbox = $list.find("li.all input")
                
                // find all checked filters and filter list
                var $checkedFilters = $list.find("input:checked");
                if($checkedFilters.length == 0 && !$(this).is(":checked"))
                    $allCheckbox.attr("checked", "checked");
                else    
                    $allCheckbox.removeAttr("checked");

                $checkedFilters.each(function() {
                    filters.push($(this).attr("data-filter"));
                });

                var selector = filters.join("");

                if(selector != "*") {
                    //$(".mosaicContainer").isotope({filter: filterBy});
                }
                $(".mosaicContainer").isotope({filter: selector});
            }
        });
    }

    initMosaic();
});
