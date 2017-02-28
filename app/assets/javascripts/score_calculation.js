$(document).on('turbolinks:load', function () {
  // Set the initial value

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
      total_score = total_score + parseInt(object.target.value);
    } else {
      // Substract from the total value
      total_score = total_score - parseInt(object.target.value);
    }
    // Render the new value
    $('input#submission_flacc_scale_total_score').val(total_score.toString());
    $('input#submission_flacc_total_score').val(total_score.toString());

  }




  // var sumE=0;
  // var sumV=0;
  // var sumM=0;
  // checkTotalE();
  // checkTotalV();
  // checkTotalM();
  //
  // // Event Listeners
  // $('.submission_best_eye_opening_response_values input.check_boxes').click(function() {
  //   checkTotalE();
  // });
  // $('.submission_best_verbal_response_values input.check_boxes').click(function() {
  //   checkTotalV();
  // });
  // $('.submission_best_motor_response_values input.check_boxes').click(function() {
  //   checkTotalM();
  // });
  //
  // function checkTotalE() {
  //   sumE = 0;
  //   $('input#submission_best_eye_opening_response').value = '';
  //
  //   for (i=0; i < $('.submission_best_eye_opening_response_values input.check_boxes').length; i++) {
  //     if ($('.submission_best_eye_opening_response_values input.check_boxes')[i].checked) {
  //       sumE = sumE + parseInt($('.submission_best_eye_opening_response_values input.check_boxes')[i].value);
  //     }
  //   }
  //
  //   $('input#submission_best_eye_opening_response').val(sumE.toString());
  //   checkTotal();
  // }
  //
  // function checkTotalV() {
  //   sumV = 0;
  //   $('input#submission_best_verbal_response').value = '';
  //
  //   for (i=0; i < $('.submission_best_verbal_response_values input.check_boxes').length; i++) {
  //     if ($('.submission_best_verbal_response_values input.check_boxes')[i].checked) {
  //       sumV = sumV + parseInt($('.submission_best_verbal_response_values input.check_boxes')[i].value);
  //     }
  //   }
  //   $('input#submission_best_verbal_response').val(sumV.toString());
  //   checkTotal();
  // }
  //
  // function checkTotalM() {
  //   sumM = 0;
  //   $('input#submission_best_motor_response').value = '';
  //
  //   for (i=0; i < $('.submission_best_motor_response_values input.check_boxes').length; i++) {
  //     if ($('.submission_best_motor_response_values input.check_boxes')[i].checked) {
  //       sumM = sumM + parseInt($('.submission_best_motor_response_values input.check_boxes')[i].value);
  //     }
  //   }
  //   $('input#submission_best_motor_response').val(sumM.toString());
  //   checkTotal();
  // }
  //
  // function checkTotal() {
  //   $('input#submission_patient_total_score').value = '';
  //   var totalsum = 0;
  //
  //   var totalsum = sumE + sumV + sumM;
  //   $('input#submission_patient_total_score').val(totalsum.toString());
  // }

});
