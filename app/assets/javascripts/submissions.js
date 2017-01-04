$(document).on('turbolinks:load', function () {
  jQuery.browser = {};
  (function () {
     jQuery.browser.msie = false;
     jQuery.browser.version = 0;
     if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
   }
  })();

  var sketchpad = Raphael.sketchpad("editor", {
     width: 400,
     height: 400,
     editing: true
   });
  // When the sketchpad changes, update the input field.
  sketchpad.change(function() {
    $("#sketch_data").val(sketchpad.json());
  });

  $(function () {
      $('#datetime-picker').datetimepicker({
        inline: true,
        sideBySide: true,
      });
  });

  var wizard = $("#nursing-form-wizard").wizard({
    progressBarCurrent: true,
    contentHeight: 800,
    contentWidth: 1500,
  });
  wizard.show();

});
