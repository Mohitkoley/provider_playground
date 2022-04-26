import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_playground/proxy_provider/credit_card.dart';
import 'package:provider_playground/proxy_provider/customer.dart';

class ProxyProviderExample extends StatelessWidget {
  const ProxyProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Proxy Provider Example"), centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CreditCard>(
              builder: (_, creditCard, __) =>
                  Text("amount: ${creditCard.amount}")),
          Consumer<CreditCard>(builder: (_, creditCard, __) {
            return ElevatedButton(
                onPressed: () => creditCard.deposit(10),
                child: Text("Deposit"));
          }),
          Consumer<Customer>(builder: (_, customer, __) {
            return ElevatedButton(
                onPressed: () => customer.withdrawl(10),
                child: Text("Withdrawl"));
          }),
          Consumer<Customer>(
            builder: (_, customer, __) => Text("${customer.numOfCreditCard}"),
          ),
          Consumer<Customer>(builder: (_, customer, __) {
            return ElevatedButton(
                onPressed: customer.applyNewCreditCard, child: Text("Apply"));
          }),
        ],
      )),
    );
  }
}
