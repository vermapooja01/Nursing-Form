//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require turbolinks
//= require bootstrap-sprockets

// Load Vendor files
//= require moment.js/moment.min
//= require moment.js/moment-timezone-with-data-2010-2020.min
//= require daterangepicker
//= require bootstrap-datetimepicker
//= require datepicker/datepicker.min
//= require froala_editor.min.js

//= require admin/time_zones
//= require admin/labs
//= require admin/patients
//= require admin/histories
//= require admin/mars
//= require scrolltotop


$(document).on('turbolinks:load', function () {
  // Generalized Date Time Picker JS functions
  // Get all the objects that are datetime pickers
  var dateTimePickerObjects = $('.date_and_time_picker');
  // Execute a loop on all the objects
  dateTimePickerObjects.each(function(index) {
    // Initialize on each date time picker the datetime function
    $(this).datetimepicker({
      inline: true,
      sideBySide: true,
      defaultDate: getDefaultDate(this)
    });
  });

  // Set up event listeners for the objects
  $(this).on('dp.change', function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d).format();
    // Convert the date object into a string
    var dateString = String(browserDate);
    // Get the object that is in charge of setting the value for the date
    var dateSetter = $(e.target).children('input[type="hidden"]');
    // Set the value of the object.
    dateSetter.val(dateString);
  });

  function getDefaultDate(dateTimeObject) {
    // Get the children of the object that has datetime
    var defaultDateField = $(dateTimeObject).children('input[type="hidden"]');
    // Declare empty variable that stores the date that was set through the form IF it was set
    var defaultDate = "";
    // Check to see if the default date is not nil
    if (defaultDateField.val() != null) {
      defaultDate = defaultDateField.val();
    }
    else {
      // Do nothing
    }
    // Return the default date
    return defaultDate;
  }

  // Froala Editor Intialization
  $('.froala-editor').froalaEditor();
  // Remove the unlicensed editor notice
  $(".order_orders div:contains('Unlicensed Froala Editor')").last().css({ zIndex: "0" });
});
