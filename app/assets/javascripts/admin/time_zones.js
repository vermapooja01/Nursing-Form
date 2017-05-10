// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
  // Get all the table cells that have dates
  var cellsWithDateTimeString = $('td.date-object')
  // Execute time conversion for all the cells that have dates and times
  cellsWithDateTimeString.each(function(index) {
    // Store the contents of the cell
    var dateString = this.innerHTML;
    // Convert the date using the function
    //var formattedDateTime = formatDate(dateString);
    // Set the new value of the cell
    this.innerHTML = formattedDateTime;
  });
  // A function that converts the date to proper format
  function formatDate(dateString) {
    // Use timezone.js to convert the dates and times
    var formattedTime = (moment(dateString)).format('MMMM Do YYYY, h:mm:ss A');
    // return the converted date time
    return formattedTime
  }
});
