import 'payment_method.dart';
import 'pos.dart';
import 'cash_payment.dart';
import 'card_payment.dart';

class MockPayment implements PaymentMethod {
  final List<String> log = [];
  @override
  void pay(double amount) {
    log.add('Mock pay: $amount');
    print('[Mock] recorded: $amount');
  }
}

void main() {
  print('--- Basic demo (MockPayment) ---');
  var mock = MockPayment();
  var pos = POS(mock);
  pos.checkout(100);
  pos.refund(50);
  print('Mock log: ${mock.log}');

  print('\n--- POS with CashPayment ---');
  var cash = CashPayment();
  var posCash = POS(cash);
  posCash.checkout(500.0);
  posCash.refund(200.0);


  print('\n--- POS with CardPayment ---');
  var card = CardPayment('1234-5678-9876-5432');
  var posCard = POS(card);
  posCard.checkout(1200.0);
  posCard.refund(300.0);

}
