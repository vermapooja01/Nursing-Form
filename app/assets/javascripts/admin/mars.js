$(document).on('turbolinks:load', function () {
  $('[data-toggle="datepicker"]').datepicker({
    format: 'mm/yyyy',
    autoHide: true
  });
});
