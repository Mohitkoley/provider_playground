import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_playground/future_provider/data.dart';

class FutureProviderExample extends StatelessWidget {
  const FutureProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Future Provider Example"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            Text(context.watch<Data>().data),
            const SizedBox(height: 10),
            Consumer<Data>(builder: (_, data, __) {
              return ElevatedButton(
                  onPressed: () => data.loadDatabyButton(),
                  child: const Text("Load Data"));
            }),
          ],
        )));
  }
}
