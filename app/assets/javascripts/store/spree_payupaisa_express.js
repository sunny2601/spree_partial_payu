

SpreePayupaisaExpress = {
  hidePaymentSaveAndContinueButton: function(paymentMethod) {
    if (SpreePayupaisaExpress.paymentMethodID && paymentMethod.val() == SpreePayupaisaExpress.paymentMethodID) {
      $('.continue').hide();
    } else {
      $('.continue').show();
    }
  }
}

$(document).ready(function() {
  checkedPaymentMethod = $('div[data-hook="checkout_payment_step"] input[type="radio"]:checked');
  SpreePayupaisaExpress.hidePaymentSaveAndContinueButton(checkedPaymentMethod);
  paymentMethods = $('div[data-hook="checkout_payment_step"] input[type="radio"]').click(function (e) {
    SpreePayupaisaExpress.hidePaymentSaveAndContinueButton($(e.target));
  });
})
