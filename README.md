# POS System — Interface & Implementations (Dart)

## What this is
Small POS example showing dependency inversion: POS depends on PaymentMethod interface and works with multiple concrete implementations:
- CashPayment
- CardPayment
- MobileWalletPayment 

## Run
From project root:
```bash
dart run lib/main.dart
