$(document).on('turbolinks:load', function () {
  // Set the initial value

  // Set event listeners
  $('input.calculable_checkbox').click(function(e) {
    calculate_sum(e);
  });

  // Get a function that sums the values
  function calculate_sum(object) {
    // Create empty var that stores a total score value
    var total_score = parseInt($('input#submission_cpot_total_score').val());
    // Check what operation to do based on the status of the checkbox
    if (object.target.checked) {
      total_score = total_score + parseInt(object.target.value);
    } else {
      // Substract from the total value
      total_score = total_score - parseInt(object.target.value);
    }
    // Render the new value
    $('input#submission_cpot_total_score').val(total_score.toString());
  }
