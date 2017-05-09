// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
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




  // Raphael Pain Sketchers

  // Pain location =====================
  if ($('#submission_location_image1').val() != "[]") {
    try {
      var strokes = JSON.parse($("#submission_location_image1").val());

      var painLocationSketcher = Raphael.sketchpad("pain-location-image1-viewer", {
        width: 400,
        height: 356,
        strokes: strokes,
        editing: false
      });
      // When the sketchpad changes, update the input field.
      painLocationSketcher.change(function() {
        $("#submission_location_image1").val(painLocationSketcher.json());
      });
    }
    catch(err) {
        // console.log("There was an error with the JSON, please draw something" + " " + err);
    }

  }
  if ($('#pain-location-image1').length) {
    var painLocationSketcher = Raphael.sketchpad("pain-location-image1", {
       width: 400,
       height: 400,
       editing: true
     });
    // When the sketchpad changes, update the input field.
    painLocationSketcher.change(function() {
      $("#submission_location_image1").val(painLocationSketcher.json());
    });

  }
  // =====================================

  // Foot pain location
  if ($('#submission_location_image2').val() != "") {
    try {
      var strokes = JSON.parse($("#submission_location_image2").val());

      var sketchpad_view = Raphael.sketchpad("pain-location-image2-viewer", {
        width: 400,
        height: 356,
        strokes: strokes,
        editing: false
      });
    }
    catch(err) {
        console.log("There was an error with the JSON, please draw something" + " " + err);
    }
  }

  if ($('#pain-location-image2').length) {
    var sketchpad = Raphael.sketchpad("pain-location-image2", {
       width: 400,
       height: 400,
       editing: true
     });
    // When the sketchpad changes, update the input field.
    sketchpad.change(function() {
      $("#submission_location_image2").val(sketchpad.json());
    });

  }
  // =======================================================

  // ===================================================



  $('#current-time-for-submission').datetimepicker({
    inline: true,
    sideBySide: true,
    defaultDate: $('#submission_week').val()
  });


  $("#current-time-for-submission").on("dp.change", function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d);
    var mountain = browserDate.tz('America/Denver').format();
    $('#submission_week').val(mountain)
  });


  // Function to save the form whenever the save button is clicked
  $("button.button-save").click(function() {
    $("form#new_submission").submit();
    $("form.simple_form").submit();
  });


  $('#iv-insertion-datetime-picker').datetimepicker({
    inline: true,
    sideBySide: true,
    defaultDate: $('#submission_current_iv_insertion_date_and_time').val()
  });


  $("#iv-insertion-datetime-picker").on("dp.change", function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d);
    var mountain = browserDate.tz('America/Denver').format();
    $('#submission_current_iv_insertion_date_and_time').val(mountain)
  });


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

  // Slider for the pain scale
  $('#submission_pain_scale').slider({
    tooltip: 'always',
  	formatter: function(value) {
  		return value;
  	}
  });
  // Slider for the pain scale rating
  $('#submission_pain_scale_rating_scale').slider({
    tooltip: 'always',
  	formatter: function(value) {
  		return value;
  	}
  });
});
