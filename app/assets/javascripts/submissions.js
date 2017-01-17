$(document).on('turbolinks:load', function () {
  // Open up the tab
  var selectedTab = $('#selected_tab').val();
  $("a[href=" + "'" + selectedTab + "'" + "]").tab('show')
  // ---------------
  jQuery.browser = {};
  (function () {
     jQuery.browser.msie = false;
     jQuery.browser.version = 0;
     if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
   }
  })();

  if ($('#pain-location-image1').length) {
    var sketchpad = Raphael.sketchpad("pain-location-image1", {
       width: 400,
       height: 400,
       editing: true
     });
    // When the sketchpad changes, update the input field.
    sketchpad.change(function() {
      $("#submission_location_image1").val(sketchpad.json());
    });

    var strokes = [{
      type:"path",
      path:[["M",10,10],["L",390,390]],
      fill:"none", "stroke":"#000000"
      // stroke-opacity:1,
      // stroke-width:5,
      // stroke-linecap:"round",
      // stroke-linejoin:"round"
    }];
    // var sketchpad = Raphael.sketchpad("viewer", {
    //   width: 400,
    //   height: 356,
    //   strokes: strokes,
    //   editing: false
    // });
  }

  $('#submission_week').daterangepicker();

  // Function to save the form whenever the save button is clicked
  $("button.button-save").click(function() {
    $("form#new_submission").submit();
    $("form.simple_form").submit();
  });

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

  // Selected tab history
  // var selectedTab = $('#selected_tab').val();
  // Select all the tabs
  $("a[data-toggle='tab']").on('shown.bs.tab', function (e) {
    // console.log($(e.target).attr('href'));
    // Change the selected tab value
    $('#selected_tab').val($(e.target).attr('href'))
  });
  // ---------------------
});
