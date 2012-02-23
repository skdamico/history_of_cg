$(function() {

  function new_story() {
    // only do this if there are no other new story templates
    if( $('.stories-col .stories.new').length <= 1) {
      //append new form to stories
      // get test form and clone it into new form
      var $storyform = $('.stories-col #story-template').clone();

      // remove id so we don't have duplicates
      $storyform.removeAttr('id');

      // append to stories-col
      if(!$('.stories-col').is(':visible')) {
        $('.stories-col').fadeIn();
      }

      $('.stories-col').append($storyform);

      // initialize it
      form_init($storyform);
      $storyform.fadeIn();
      $('.stories:last .story-collapsed').slideDown();
    }
  }

  function enable_publish_ui($container) {
    $container.find('button').removeAttr('disabled');
  }

  function disable_publish_ui($container) {
    $container.find('button').attr('disabled', true);
  }

  /*
   * Intialize story
   *
   */
  function form_init(story) {
    // form options!
    var options = {
      type: 'post',
      data: { "data[entry_id]": $('.entry-name .entry-id').val() },
      dataType: 'json',
      success: function(data, s, xhr, $f) {
        if(data.response) {
          // show quick flash message
          Messages.show(data.response, 4000);
        }

        if(data.id) {
          $f.find('.story-id').val(data.id);
        }

        if(data.publish) {
          if(data.publish === "published") {
            // set button to unpublish
            change_publish_ui($f.find('.story-save .publish-button'), "publish", 1);
          }
          else if(data.publish === "unpublished") {
            // set button to publish
            change_publish_ui($f.find('.story-save .publish-button'), "publish", 0);
          }
        }
        else {
          change_publish_ui($f.find('.story-save .publish-button'), "draft", "enable");
        }
        enable_publish_ui($f.find('.story-save'));
      }
    };

    var $form = $(story).find('.story-collapsed form');
    $form.ajaxForm(options);


    // submit form on click
    $form.find('.story-save button').click(function() {
      if(!$(this).hasClass('publish-button')) {
        // save draft, do not publish
        change_publish_ui(this, "draft", "disable");
      }

      // submit form
      $form.submit();

      // diable the publish ui while submitting
      disable_publish_ui($(this).parent());

      // remove new class
      $(story).removeClass('new');

      // update title
      var title = $form.find('.story-title input').val();
      $(story).find('.story-collapsed-heading .title').html(title);

      return false;
    });


    // initialize datepicker function
    $form.find('.story-date .datepicker').live('focusin', function() {
      $(this).datepicker({altField: $(this).next('input[type=hidden]'), altFormat: 'yy-mm-dd'});
    });


    // initialize sliding
    $(story).find('p.story-collapsed-heading').click(function() {
        $(this).next().slideToggle('slow');
    });


    // initialize helper text
    $form.find('li .need-helper').each(function() {
        $(this).focus(function() {
          $(this).siblings('.helper-popups').fadeIn();
        })
        .focusout(function() {
          $(this).siblings('.helper-popups').fadeOut();
        });
    });


    // initialize author autocomplete field
    $form.find('.story-author input[type=text]').bind("keydown", function(event) {
      if(event.keyCode === $.ui.keyCode.TAB &&
        $(this).data("autocomplete").menu.active) {
        event.preventDefault();
      }
    })
    .autocomplete({
      source: function(request, callback) {
        $.getJSON("/entries/get_by_phrase/", { t: "person", q: request.term }, callback);
      },
      focus: function( event, ui ) {
        $( this ).val( ui.item.name );
        return false;
      },
      select: function( event, ui ) {
        $(this).val( ui.item.name );
        $(this).siblings('.author-id').val( ui.item.id );

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


    // initialize source fade
    $form.find('.story-source-checkbox').click(function(){
        if (this.checked) {
            $form.find('.source-title').fadeIn();
            $form.find('.source-url').fadeIn();
        }
        else {
            $form.find('.source-title').hide();
            $form.find('.source-url').hide();
        }

    });

  }

  function init() {

    // populate stories section with user's stories
    // bind events
    $('.share .btn-story').click( new_story );

    // setup stories

    $('.stories').each(function() {
      // initialize form
      form_init(this);
    });
  }


  // start!
  init();
});
