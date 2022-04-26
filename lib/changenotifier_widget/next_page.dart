import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:provider_playground/changenotifier_widget/counter_notifier.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 10);
    return Scaffold(
      appBar: AppBar(title: Text("Provider state management")),
      body: Center(
          child: Column(children: [
        Text("${context.watch<CounterNotifier>().counter}"),
        gap,
        ElevatedButton(
          onPressed: () => context.read<CounterNotifier>().increase(),
          child: Text("Increase"),
        ),
        gap,
        ElevatedButton(
            onPressed: () => context.read<CounterNotifier>().decrease(),
            child: Text("Decrease")),
        gap,
        ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back))
      ])),
    );
  }
}
