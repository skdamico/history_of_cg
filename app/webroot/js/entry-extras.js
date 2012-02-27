$(function() {

  var $connection_form_tags = null;

  function new_story() {
    // only do this if there are no other new story templates
    if( $('.stories-col .stories.new').length <= 1) {
      //append new form to stories
      // get test form and clone it into new form
      var $storyform = $('.stories-col #story-template').clone();

      // remove id so we don't have duplicates
      $storyform.removeAttr('id');

      // append to stories-col
      $('.stories-col').append($storyform);

      // initialize it
      story_form_init($storyform);
      $storyform.fadeIn();
      $('.stories:last .story-collapsed').slideDown();
    }
  }

  //
  // create a new connection object by cloning template
  //
  function new_connection(id, name, type) {
    var $connection = $('.connections-col #connection-template').clone();

    // remove id so we don't have duplicates
    $connection.removeAttr('id');

    // fill in name and id
    $connection.attr('data-id', id);
    $connection.children('.name').html(name);

    // add category class depending on type
    $connection.addClass(type);

    // append to connections-col
    $('.connections-col').append($connection);

    $connection.fadeIn();
  }

  //
  // reset the connection form by hiding extra fields and clearing
  //
  function reset_connection_form() {
    var $form = $('#connection-form form');

    // hide the extra fields
    $form.find('.extra').slideUp();

    // clear the form
    $connection_form_tags.tokenInput("clear");

    $form.clearForm();
    $form.find('.entry-id').val('');
  }

  function enable_publish_ui($container) {
    $container.find('button').removeAttr('disabled');
  }

  function disable_publish_ui($container) {
    $container.find('button').attr('disabled', true);
  }


  //
  // Intialize story
  //
  function story_form_init(story) {
    // form options!
    var options = {
      type: 'post',
      data: { "data[entry_id]": $('#main-stub .required-fields .entry-name .entry-id').val() },
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

  function init_connections_form() {

    var $form = $('#connection-form form');

    $connection_form_tags = $form.find('.all-fields .entry-tags .tags');

    $connection_form_tags.tokenInput('/tags/fetch/', {
        theme: 'hcg',
        allowCustomEntry: true,
        preventDuplicates: true,
        hintText: 'Please further categorize this entry'
    });

    //
    // autocomplete for Entry name
    //
    $form.find('.all-fields .entry-name input[type=text]').bind("keydown", function(event) {
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
        $(this).val( ui.item.name );
        $(this).siblings('.entry-id').val( ui.item.id );

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
        .append( "<a><span class='autocomplete-name'>" + t + "</span><span class='autocomplete-category-box "+item.category+"'></span></a>" )
        .appendTo( ul );
    };


    //
    // ajax submit form setup
    //
    var options = {
      type: 'post',
      data: { "data[entry_id]": $('#main-stub .required-fields .entry-name .entry-id').val() },
      dataType: 'json',
      success: function(data, s, xhr, $f) {
        if(data.more) {
          // show connection form extras
          $form.find('.extra').slideDown();
        }
        else {
          if(data.response) {
            // show quick flash message
            Messages.show(data.response, 4000);
          }

          if(data.id) {
            var name = $('#connection-form .required-fields .entry-name input[type=text]').val();
            // create new connection with name, id,
            new_connection(data.id, name, data.type);
          }

          // clear and reset connection form
          reset_connection_form();
        }
      }
    };

    $form.ajaxForm(options);
  }


  function init() {
    // populate stories section with user's stories
    // bind events
    $('.share .btn-story').click( new_story );

    // setup stories
    $('.stories').each(function() {
      // initialize form
      story_form_init(this);
    });

    // init connections
    init_connections_form();

    $('.connections').each(function() {
      //connection_init(this);
    });
  }


  // start!
  init();
});
