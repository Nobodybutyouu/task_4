import 'payment_method.dart';

class CashPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    if (amount >= 0) {
      print('[Cash] Customer pays ₱$amount in cash.');
    } else {
      print('[Cash] Customer refunded ₱${-amount} in cash.');
      
    }
  }
}