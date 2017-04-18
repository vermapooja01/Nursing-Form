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

//= require admin/time_zones
//= require admin/labs
//= require admin/patients
//= require admin/histories
//= require admin/mars


$(document).on('turbolinks:load', function () {
  // Date Time Picker
  $('.date_and_time_picker').datetimepicker({
    inline: true,
    sideBySide: true
  });
  $('.date_and_time_picker').on('dp.change', function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d).format();
    $(e.target).children().find('input[type="hidden"]').val(String(browserDate));
  });
});
