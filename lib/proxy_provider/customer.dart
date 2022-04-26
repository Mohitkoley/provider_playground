import 'package:flutter/material.dart';
import 'package:provider_playground/proxy_provider/credit_card.dart';

class Customer {
  CreditCard? creditCard;
  int numOfCreditCard = 1;
  Customer({required this.creditCard});

  void deposit(int amount) {
    creditCard?.deposit(amount);
  }

  void withdrawl(int amount) {
    return creditCard?.withdrawl(amount);
  }

  applyNewCreditCard() {
    numOfCreditCard += 1;
    debugPrint("numOfCreditCard: $numOfCreditCard");
  }
}
