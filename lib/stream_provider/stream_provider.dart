import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_playground/stream_provider/data.dart';

class StreamProviderExample extends StatelessWidget {
  const StreamProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stram Provider Example"), centerTitle: true),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Consumer<ModelStream>(
              builder: (_, model, __) => Text("${model.number}")),
          SizedBox(
            height: 10,
          ),
          Consumer<ModelStream>(
              builder: (_, model, __) => ElevatedButton(
                  onPressed: model.increase, child: Text("Increase"))),
        ]),
      ),
    );
  }
}
