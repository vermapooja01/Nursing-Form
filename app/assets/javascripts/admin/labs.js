$(document).on('turbolinks:load', function () {
  $('#date_and_time_drawn_picker').datetimepicker({
    inline: true,
    sideBySide: true,
    defaultDate: $('#submission_current_iv_insertion_date_and_time').val()
  });

});
