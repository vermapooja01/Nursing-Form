$(document).on('turbolinks:load', function () {
  // Set event listeners
  $('input.calculable_checkbox').click(function(e) {
    calculate_sum(e);
  });

  // Get a function that sums the values
  function calculate_sum(object) {
    // Create empty var that stores a total score value
    var total_score = parseInt($('input#submission_flacc_total_score').val());
    // Check what operation to do based on the status of the checkbox
    if (object.target.checked) {
      total_score = total_score + parseInt(object.target.value - 1);
    } else {
      // Substract from the total value
      total_score = total_score - parseInt(object.target.value - 1);
    }
    // Render the new value
    $('input#submission_flacc_scale_total_score').val(total_score.toString());
    $('input#submission_flacc_total_score').val(total_score.toString());
  }
  // ==========================================================
  // Set event listeners
  $('input.cpot_calculable_checkbox').click(function(e) {
    calculate_cpot_sum(e);
  });

  // Get a function that sums the values
  function calculate_cpot_sum(object) {
    // Create empty var that stores a total score value
    var total_score = parseInt($('input#submission_cpot_total_score').val());
    // Check what operation to do based on the status of the checkbox
    if (object.target.checked) {
      total_score = total_score + parseInt(object.target.value - 1);
    } else {
      // Substract from the total value
      total_score = total_score - parseInt(object.target.value - 1);
    }
    // Render the new value
    $('input#submission_cpot_total_score').val(total_score.toString());
    $('input#submission_total_score').val(total_score.toString());
  }

});
