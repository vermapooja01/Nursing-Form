$(document).on('turbolinks:load', function () {
  $('#date_and_time_drawn_picker').datetimepicker({
    inline: true,
    sideBySide: true,
    defaultDate: $('#date_and_time_drawn_picker').val()
  });
  $("#date_and_time_drawn_picker").on("dp.change", function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d);
    var mountain = browserDate.tz('America/Denver').format();
    $('#lab_date_and_time_drawn').val(mountain)
  });

});
