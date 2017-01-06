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

  if ($('#editor').length) {
    var sketchpad = Raphael.sketchpad("editor", {
       width: 400,
       height: 400,
       editing: true
     });
    // When the sketchpad changes, update the input field.
    sketchpad.change(function() {
      $("#sketch_data").val(sketchpad.json());
    });
  }

  $('#submission_week').daterangepicker();

  // $(function () {
  //     $('#datetime-picker').datetimepicker({
  //       inline: true,
  //       sideBySide: true,
  //     });
  // });

  // var wizard = $("#nursing-form-wizard").wizard({
  //   progressBarCurrent: true,
  //   contentHeight: 400,
  //   contentWidth: 900,
  // });
  // wizard.show();


  $('#rootwizard').bootstrapWizard({
    onTabShow: function(tab, navigation, index) {
      var $total = navigation.find('li').length;
  		var $current = index+1;
  		var $percent = ($current/$total) * 100;
  		$('#rootwizard .progress-bar').css({width:$percent+'%'});
  	},
    'tabClass': 'nav nav-tabs tabs-left',
    'nextSelector': '.button-next',
    'previousSelector': '.button-previous'
  });
});
