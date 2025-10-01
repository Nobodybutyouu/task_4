import 'payment_method.dart';

class POS {
  final PaymentMethod paymentMethod;

  POS(this.paymentMethod);

  void checkout(double amount) {
    print('[POS] Checking out ₱$amount ...');
    paymentMethod.pay(amount);
  }

  void refund(double amount) {
    print('[POS] Refunding ₱$amount ...');
    paymentMethod.pay(-amount); 
  }
}
