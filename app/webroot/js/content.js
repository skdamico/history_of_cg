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

    var $mosaic = $(".mosaicBody .mosaicContainer");

    function initMosaic() {
        $mosaic.isotope({
            itemSelector: ".tile",
            animationEngine: "best-available",
            layoutMode: "masonry",
            masonry: {
                columnWidth: 246,
                cornerStampSelector: ".dynamic"
            },
            resizable: true
        });
        $mosaic.isotope("shuffle");


        // activate category filtering
        $(".entryMast .catBar .category a").click(function() {
            var $parent = $(this).parent("li");

            if($parent.hasClass("selected")) {
                // remove selected
                $parent.removeClass("selected");
                
                // remove filters
                $mosaic.isotope({filter: "*"});

                $(".tagLists div").slideUp();

                // repopulate description
                var $dynamic = $(".mosaicContainer .dynamic");
                $dynamic.html($(".entryInfo .entryDescription").html());
                
                // add hairline
                $dynamic.removeClass("person project organization event");
                $dynamic.addClass($('.entryInfo .entryCategory').val());
            }
            else {
                // add selected class
                $(".entryMast .catBar .category").removeClass("selected");
                $parent.addClass("selected");

                // filter by category
                var selector = $(this).attr("data-filter");
                $mosaic.isotope({filter: selector});

                filter_tag_checkboxes(selector);

                // toggle tag filter list
                $('.tagLists div').slideDown();


                // create list of filter
                var $dynamic = $(".mosaicContainer .dynamic");
                $dynamic.html("<p>List of "+$(this).html().toLowerCase()+" in relation w/ "+$(".entryInfo .entryName").val()+"</p><ul class='filterList'></ul>");
                $(".mosaicContainer "+selector+".connection a").each(function() {
                    $dynamic.children("ul").append("<li><a href='"+$(this).attr("href")+"'>"+$(this).children("span").html()+"</a></li>");
                });

                // create hairline
                $dynamic.removeClass("person project organization event");
                $dynamic.addClass(selector.replace(/\./g, ""));
            }

            return false;
        });


        function filter_tag_checkboxes(selector) {
            $('li:not(li'+selector+', li.all)', '.tagLists div ul').hide();
            $('li.all, li'+selector, '.tagLists div ul').show();
        }

        var $list = $('.tagLists div ul');
        // Handle tag checkbox events
        $list.find("input[type=checkbox]").click(function() {
            var filters = [$(".catBar .selected a").attr("data-filter")];

            // Check for All
            if($(this).attr("data-filter") === "*") {
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
                if($checkedFilters.length == 0 && !$(this).is(":checked")) {
                    $allCheckbox.attr("checked", "checked");
                }
                else {
                    $allCheckbox.removeAttr("checked");
                }

                $checkedFilters.each(function() {
                    if($(this).attr('data-filter') !== '*') {
                        filters.push($(this).attr("data-filter"));
                    }
                });

                var selector = filters.join("");

                $(".mosaicContainer").isotope({filter: selector});
            }
        });


    }

    // initialize isotope after all images are loaded
    $mosaic.imagesLoaded(function() { 
        $mosaic.animate({opacity: 1.0}, 800, function() { $mosaic.removeClass('loading'); });
        initMosaic(); 
    });
});
