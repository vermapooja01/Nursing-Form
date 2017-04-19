$(document).on('turbolinks:load', function () {
  $('#date_of_admission_picker').datetimepicker({
    inline: true,
    sideBySide: true,
    defaultDate: $('#date_of_admission').val()
  });
  $("#date_of_admission_picker").on("dp.change", function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d).format();
    $('#history_date_of_admission').val(String(browserDate));
  });

});
