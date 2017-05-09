// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
  var sumE=0;
  var sumV=0;
  var sumM=0;
  checkTotalE();
  checkTotalV();
  checkTotalM();

  // Event Listeners
  $('.submission_best_eye_opening_response_values input.check_boxes').click(function() {
    checkTotalE();
  });
  $('.submission_best_verbal_response_values input.check_boxes').click(function() {
    checkTotalV();
  });
  $('.submission_best_motor_response_values input.check_boxes').click(function() {
    checkTotalM();
  });

  function checkTotalE() {
    sumE = 0;
    $('input#submission_best_eye_opening_response').value = '';

    for (i=0; i < $('.submission_best_eye_opening_response_values input.check_boxes').length; i++) {
      if ($('.submission_best_eye_opening_response_values input.check_boxes')[i].checked) {
        sumE = sumE + parseInt($('.submission_best_eye_opening_response_values input.check_boxes')[i].value);
      }
    }

    $('input#submission_best_eye_opening_response').val(sumE.toString());
    checkTotal();
  }

  function checkTotalV() {
    sumV = 0;
    $('input#submission_best_verbal_response').value = '';

    for (i=0; i < $('.submission_best_verbal_response_values input.check_boxes').length; i++) {
      if ($('.submission_best_verbal_response_values input.check_boxes')[i].checked) {
        sumV = sumV + parseInt($('.submission_best_verbal_response_values input.check_boxes')[i].value);
      }
    }
    $('input#submission_best_verbal_response').val(sumV.toString());
    checkTotal();
  }

  function checkTotalM() {
    sumM = 0;
    $('input#submission_best_motor_response').value = '';

    for (i=0; i < $('.submission_best_motor_response_values input.check_boxes').length; i++) {
      if ($('.submission_best_motor_response_values input.check_boxes')[i].checked) {
        sumM = sumM + parseInt($('.submission_best_motor_response_values input.check_boxes')[i].value);
      }
    }
    $('input#submission_best_motor_response').val(sumM.toString());
    checkTotal();
  }

  function checkTotal() {
    $('input#submission_patient_total_score').value = '';
    var totalsum = 0;

    var totalsum = sumE + sumV + sumM;
    $('input#submission_patient_total_score').val(totalsum.toString());
  }

});
