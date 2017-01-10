$(document).on('turbolinks:load', function () {
  var sumE=0;
  var sumV=0;
  var sumM=0;

  // Event Listeners
  $('input.eye').click(function() {
    checkTotalE();
  });
  $('input.verbal').click(function() {
    checkTotalV();
  });
  $('input.motor').click(function() {
    checkTotalM();
  });

  function checkTotalE() {
    sumE = 0;
    $('input#submission_best_eye_opening_response').value = '';

    for (i=0; i < $('input.eye').length; i++) {
      if ($('input.eye')[i].checked) {
        sumE = sumE + parseInt($('input.eye')[i].value);
      }
    }

    $('input#submission_best_eye_opening_response').val(sumE.toString());
    checkTotal();
  }

  function checkTotalV() {
    sumV = 0;
    $('input#submission_best_verbal_response').value = '';

    for (i=0; i < $('input.verbal').length; i++) {
      if ($('input.verbal')[i].checked) {
        sumV = sumV + parseInt($('input.verbal')[i].value);
      }
    }
    $('input#submission_best_verbal_response').val(sumV.toString());
    checkTotal();
  }
  function checkTotalM() {
    sumM = 0;
    $('input#submission_best_motor_response').value = '';

    for (i=0; i < $('input.motor').length; i++) {
      if ($('input.motor')[i].checked) {
        sumM = sumM + parseInt($('input.motor')[i].value);
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
