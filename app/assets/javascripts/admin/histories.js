// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
  $('#date_of_admission_picker').datetimepicker({
    inline: true,
    sideBySide: true,
    defaultDate: $('#date_of_admission').val()
  });

  $("#date_of_admission_picker").on("dp.change", function (e) {
    // Conversion to momentjs data object
    var browserDate = moment(e.date._d).toISOString();
    console.log(browserDate);
    $('#history_date_of_admission').val(String(browserDate));
  });

  $('[data-toggle="birthday-datepicker"]').datepicker({
    format: 'dd/mm/yyyy',
    autoHide: true
  });

});
