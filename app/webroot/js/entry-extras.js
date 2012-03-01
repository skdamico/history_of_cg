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

      // activate tabs for this shit
      // delete this horrid code

      $storyform.find('.tabs div').hide();
      $storyform.find('.tabs div:first').show();
      $storyform.find('.tabs ul li:first').addClass('active');
      $storyform.find('.tabs ul li a').click(function(){
        $(this).parent().siblings().removeClass('active');
        $(this).parent().addClass('active');

        var currentTab = $(this).attr('href');
        $storyform.find('.tab-content').each(function() {
          var contentTag = $(this).attr('data-tab');

          if( contentTag === currentTab.substr(1)) {
            $(this).show();
          }
          else {
            $(this).hide();
          }
        });
        return false;
      });

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

    // make delete work
    bind_connection_delete($connection);

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


  function show_story_source(story, show) {
      if (show) {
          $(story).find('.source-title').fadeIn();
          $(story).find('.source-url').fadeIn();
      }
      else {
          $(story).find('.source-title').hide();
          $(story).find('.source-url').hide();
      }
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
          var $headingInfo = $f.parent().siblings('.story-collapsed-heading').children('.info');

          if(data.publish === "published") {
            // set button to unpublish
            change_publish_ui($f.find('.story-save .publish-button'), "publish", 1);
            // set heading to published
            $headingInfo.html('Published');
          }
          else if(data.publish === "unpublished") {
            // set button to publish
            change_publish_ui($f.find('.story-save .publish-button'), "publish", 0);
            // set heading to unpublished
            $headingInfo.html('Unpublished');
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


    // source init
    show_story_source($form, $form.find('.story-source-checkbox').is(':checked'));

    $form.find('.story-source-checkbox').click(function(){
        show_story_source($form, $(this).is(':checked'));
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


  function bind_connection_delete(item) {
    var $item_delete = $(item).find('.delete');
    var item_id = $(item).attr('data-id');

    $item_delete.bind('click', function() {

      // delete item on success
      $.post('/connections/delete/'+item_id, function(data) {
        // fade out and remove the connection
        $(item).fadeOut(500, function() { $(this).remove(); });

        // show message that connection was deleted
        Messages.show(data.response, 4000);
      }, 'json');
    });
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

    // bind delete buttons
    $('.connections').each(function() {
      bind_connection_delete(this);
    });
  }


  // start!
  init();
});
