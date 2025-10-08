import 'payment_method.dart';

class CardPayment implements PaymentMethod {
  final String cardNumber;
  CardPayment(this.cardNumber);

  @override
  void pay(double amount) {
    var last4 = cardNumber.length >= 4 ? cardNumber.substring(cardNumber.length - 4) : cardNumber;
    if (amount >= 0) {
      print('[Card] Charged ₱$amount to card ending in $last4');
    } else {
      print('[Card] Refunded ₱${-amount} to card ending in $last4');
    }
  }
}