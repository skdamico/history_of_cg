/**
 *  Messages - A simple way to show flash messages with JS
 */
(function () {

  var Messages = {
    VERSION: "0.1",
    box: {},

    // grab jquery or zepto if it's there
    $: (typeof window !== 'undefined') ? window.jQuery || window.Zepto || null : null,

    /*
    * show - String message, int time
    *  Show the message in either a flash or message box for duration t
    */
    show: function(str, t) {
      var _box = Messages.box;

      Messages.$(_box).html(str);
      Messages.$(_box).slideDown().siblings('.spacer').slideDown();

      Messages.slide(_box, t);
    },

    /**
     * slide - Object obj int t
     *  slide the given object after a given delay or 4 seconds (default)
     */
    slide: function(obj, t) {
      var _t = t;
      if(_t === undefined || _t === null) {
        _t = 5000;
      }

      setTimeout(function() {
        Messages.$(obj).slideUp().siblings('.spacer').slideUp();
      }, _t);
    },

    /*
     * 
     *
     */
    findMessageBox: function() {
      var _box = null;
      var _spacer = "<div class='spacer'></div>";
      // TODO: if jQuery is not found, use plain js.
      if(Messages.$) {
        // Start fading any session flash
        _box = Messages.$('#flashMessage');
        if(Messages.$(_box).length > 0) {
          Messages.$('body').prepend(_spacer).prepend(_box);
        }
        else {
          Messages.$('body').prepend(_spacer).prepend("<div class='message' style='display:none;'></div>");
          _box = Messages.$('body .message');
        }

        // If flash is available, show immediately
        if(Messages.$(_box).attr('id') !== undefined) {
          Messages.$('body .spacer').slideDown();
          Messages.slide(_box);
        }

      }

      Messages.box = _box;
    }
  };

  // Use CommonJS if applicable
  if (typeof require !== 'undefined') {
    module.exports = Messages;
  }
  else {
    // else attach it to the window
    window.Messages = Messages;
  }
  
  if (typeof document !== 'undefined') {
    if (Messages.$) {
        Messages.$(function () {
            Messages.findMessageBox();
        });
    } else {
        document.addEventListener('DOMContentLoaded', function () {
            Messages.findMessageBox();
        }, true);
    }
  }

})();
