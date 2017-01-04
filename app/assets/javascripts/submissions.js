$(document).on('turbolinks:load', function () {
  var wizard = $("#nursing-form-wizard").wizard({
    progressBarCurrent: true,
    contentHeight: 800,
    contentWidth: 1500,
  });
  wizard.show();
});
