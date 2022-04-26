import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:provider_playground/changenotifier_widget/counter_notifier.dart';
import 'package:provider_playground/future_provider/data.dart';
import 'package:provider_playground/stream_provider/data.dart';

class MultiProviderExample extends StatelessWidget {
  const MultiProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 10);
    return Scaffold(
        appBar: AppBar(title: Text("Stream Provider Example")),
        body: Center(
          child: Consumer3<CounterNotifier, Data, ModelStream>(
              builder: (_, counter, data, model, __) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${counter.counter}"),
                  gap,
                  Text(data.data),
                  gap,
                  Text("${model.number}"),
                ]);
          }),
        ));
  }
}
