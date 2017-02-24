$(document).on('turbolinks:load', function () {
  // Set the initial value

  // Set event listeners
  $('input.cpot_calculable_checkbox').click(function(e) {
    calculate_sum_cpot(e);
  });

  // Get a function that sums the values
  function calculate_sum_cpot(object) {
    // Create empty var that stores a total score value
    var total_score_cpot = parseInt($('input#submission_cpot_total_score').val());
    // Check what operation to do based on the status of the checkbox
    if (object.target.checked) {
      total_score_cpot = total_score_cpot + parseInt(object.target.value);
    } else {
      // Substract from the total value
      total_score_cpot = total_score_cpot - parseInt(object.target.value);
    }
    // Render the new value
    $('input#submission_cpot_total_score').val(total_score_cpot.toString());
    $('input#submission_total_score').val(total_score_cpot.toString());
  }
});
