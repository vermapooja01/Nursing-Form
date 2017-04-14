$(document).on('turbolinks:load', function () {
  var utcTime = moment($('td.date-object').html());
  var elPasoTime = utcTime.tz('America/Denver').format('MMMM Do YYYY, h:mm:ss A');
  // Render new El Paso Time
  $('td.date-object').html(elPasoTime);
});
