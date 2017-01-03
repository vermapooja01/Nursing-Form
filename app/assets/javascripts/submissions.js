$(document).on('turbolinks:load', function () {
  var wizard = $("#nursing-form-wizard").wizard({
    progressBarCurrent: true,
    contentHeight: 1000,
    contentWidth: 1000,
  });
  wizard.show();
});
