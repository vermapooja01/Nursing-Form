$(document).on('turbolinks:load', function () {
  var formattedTime = (moment($('td.date-object').html())).format('MMMM Do YYYY, h:mm:ss A');
  // var elPasoTime = utcTime.format('MMMM Do YYYY, h:mm:ss A');
  // Render new El Paso Time
  $('td.date-object').html(formattedTime);
});
