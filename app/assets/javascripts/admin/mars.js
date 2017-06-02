// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
  $('[data-toggle="datepicker"]').datepicker({
    format: 'mm/yyyy',
    autoHide: true
  });

  $('.chosen-select').chosen({
    width: 600
  });

});
