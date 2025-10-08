import 'payment_method.dart';

class MobileWalletPayment implements PaymentMethod {
  final String walletId;
  MobileWalletPayment(this.walletId);

  @override
  void pay(double amount) {
    if (amount >= 0) {
      print('[MobileWallet] ₱$amount deducted from wallet $walletId.');
    } else {
      print('[MobileWallet] ₱${-amount} refunded to wallet $walletId.');
    }
  }
}
