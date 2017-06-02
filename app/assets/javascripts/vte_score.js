
// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
  var sumone=0;
  var sumtwo=0;
  var sumthree=0;
  var sumfive = 0;
  checkTotalOne();
  checkTotalTwo();
  checkTotalThree();
  checkTotalFive();

  //Event Listenrs
  $('.submission_risk_factor_one_values input.check_boxes').click(function() {
    checkTotalOne();
  });
  $('.submission_risk_factor_two_values input.check_boxes').click(function() {
    checkTotalTwo();
  });
  $('.submission_risk_factor_three_values input.check_boxes').click(function() {
    checkTotalThree();
  });
  $('.submission_risk_factor_five_values input.check_boxes').click(function() {
    checkTotalFive();
  });

  function checkTotalOne() {
    sumone = 0;
    $('input#submission_risk_factor_one').value = '';

    for (i =0; i < $('.submission_risk_factor_one_values input.check_boxes').length; i++) {
      if ($('.submission_risk_factor_one_values input.check_boxes')[i].checked) {
        sumone = sumone + parseInt($('.submission_risk_factor_one_values input.check_boxes')[i].value) - i;
      }
    }

    $('input#submission_risk_factor_one').val(sumone.toString());
    checkTotal();
  }

  function checkTotalTwo() {
    sumtwo = 0;
    $('input#submission_risk_factor_two').value = '';

    for (i=0; i < $('.submission_risk_factor_two_values input.check_boxes').length; i++) {
      if ($('.submission_risk_factor_two_values input.check_boxes')[i].checked) {
        sumtwo = sumtwo + parseInt($('.submission_risk_factor_two_values input.check_boxes')[i].value) - i;
      }
    }
    $('input#submission_risk_factor_two').val(sumtwo.toString());
    checkTotal();
  }

  function checkTotalThree() {
    sumthree = 0;
    $('input#submission_risk_factor_three').value = '';

    for (i=0; i < $('.submission_risk_factor_three_values input.check_boxes').length; i++) {
      if ($('.submission_risk_factor_three_values input.check_boxes')[i].checked) {
        sumthree = sumthree + parseInt($('.submission_risk_factor_three_values input.check_boxes')[i].value) - i;
      }
    }
    $('input#submission_risk_factor_three').val(sumthree.toString());
    checkTotal();
  }

  function checkTotalFive() {
    sumfive = 0;
    $('input#submission_risk_factor_five').value = '';

    for (i=0; i < $('.submission_risk_factor_five_values input.check_boxes').length; i++) {
      if ($('.submission_risk_factor_five_values input.check_boxes')[i].checked) {
        sumfive = sumfive + parseInt($('.submission_risk_factor_five_values input.check_boxes')[i].value) - i;
      }
    }
    $('input#submission_risk_factor_five').val(sumfive.toString());
    checkTotal();
  }

  function checkTotal() {
    $('input#submission_vte_total_score').value = '';
    var totalsum = 0;

    var totalsum = sumone + sumtwo + sumthree + sumfive;
    $('input#submission_vte_total_score').val(totalsum.toString());
  }

});
