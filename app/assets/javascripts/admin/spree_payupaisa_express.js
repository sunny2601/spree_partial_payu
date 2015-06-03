

SpreePayupaisaExpress = {
  hideSettings: function(paymentMethod) {
    if (SpreePayupaisaExpress.paymentMethodID && paymentMethod.val() == SpreePayupaisaExpress.paymentMethodID) {
      $('.payment-method-settings').children().hide();
      $('#payment_amount').attr('disabled', 'disabled');
      $('button[type="submit"]').attr('disabled', 'disabled');
      $('#payupaisa-warning').show();
    } else if (SpreePayupaisaExpress.paymentMethodID) {
      $('.payment-method-settings').children().show();
      $('button[type=submit]').attr('disabled', '');
      $('#payment_amount').attr('disabled', '')
      $('#payupaisa-warning').hide();
    }
  }
}

$(document).ready(function() {
  checkedPaymentMethod = $('#payment-methods input[type="radio"]:checked');
  SpreePayupaisaExpress.hideSettings(checkedPaymentMethod);
  paymentMethods = $('#payment-methods input[type="radio"]').click(function (e) {
    SpreePayupaisaExpress.hideSettings($(e.target));
  });
})
