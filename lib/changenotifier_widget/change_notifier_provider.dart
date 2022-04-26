import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:provider_playground/changenotifier_widget/counter_notifier.dart';
import 'package:provider_playground/changenotifier_widget/next_page.dart';

class ChangeNotifierProviderExample extends StatelessWidget {
  const ChangeNotifierProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterNotifierNoChange =
        Provider.of<CounterNotifier>(context, listen: false);
    final counterNotifier = Provider.of<CounterNotifier>(context);
    return Scaffold(
        appBar: AppBar(
            title: Text("ChangeNotifierProvider Example"), centerTitle: true),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("${counterNotifier.counter}"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => counterNotifierNoChange.increase(),
              child: Text("Increase"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => counterNotifierNoChange.decrease(),
              child: Text("decrease"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NextPage())),
                child: Text("Next Page")),
          ]),
        ));
  }
}
