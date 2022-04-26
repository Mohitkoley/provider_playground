import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:provider_playground/provider_widget/counter.dart';

class ProviderExample extends StatelessWidget {
  const ProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(
                builder: (context, person, __) => Text("${person.number}")),
            SizedBox(height: 20),
            Consumer<Counter>(
                builder: (context, person, __) => ElevatedButton(
                      onPressed: () {
                        return person.increase();
                      },
                      child: Icon(Icons.add),
                    )),
            SizedBox(height: 20),
            Consumer<Counter>(
                builder: (context, person, __) => ElevatedButton(
                      onPressed: () {
                        return person.decrease();
                      },
                      child: Icon(Icons.remove),
                    )),
          ],
        ),
      ),
    );
  }
}
