import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_playground/changenotifier_widget/change_notifier_provider.dart';
import 'package:provider_playground/changenotifier_widget/counter_notifier.dart';
import 'package:provider_playground/future_provider/data.dart';
import 'package:provider_playground/future_provider/data_future.dart';
import 'package:provider_playground/future_provider/future_provider.dart';
import 'package:provider_playground/multi_provider/multi_provider.dart';
import 'package:provider_playground/provider_widget/provider_example.dart';
import 'package:provider_playground/proxy_provider/credit_card.dart';
import 'package:provider_playground/stream_provider/data.dart';
import 'package:provider_playground/stream_provider/data_stream.dart';
import 'package:provider_playground/stream_provider/stream_provider.dart';

import 'provider_widget/counter.dart';
import 'proxy_provider/customer.dart';
import 'proxy_provider/proxy_provider.dart';

// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Provider(
//           create: (context) => Counter(), child: const ProviderExample())));
// }
//Provider Example

// void main() {
//   runApp(ChangeNotifierProvider<CounterNotifier>(
//       create: (context) => CounterNotifier(),
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: ChangeNotifierProviderExample(),
//       )));
// }
//changeNotifierExample

void main() {
  return runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureProvider<Data>(
//       create: (_) => LoadData(),
//       initialData: Data(data: "Loading data"),
//       child: const MaterialApp(
//         home: FutureProviderExample(),
//         debugShowCheckedModeBanner: false,
//       ),
//     );
//   }
// }
//Future Provider Example

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<ModelStream>(
//         create: (_) => loadStream(),
//         initialData: ModelStream(number: 0),
//         child: MaterialApp(
//           home: StreamProviderExample(),
//           debugShowCheckedModeBanner: false,
//         ));
//   }
// }
//stream Provider
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<CounterNotifier>(
//           create: (_) => CounterNotifier(),
//         ),
//         FutureProvider<Data>(
//           create: (_) => LoadData(),
//           initialData: Data(data: "Loading Data..."),
//         ),
//         StreamProvider<ModelStream>(
//             create: (_) => loadStream(), initialData: ModelStream(number: 0))
//       ],
//       child: MaterialApp(
//           //home: ChangeNotifierProviderExample()
//           //home: FutureProviderExample(),
//           //home: StreamProviderExample(),
//           home: MultiProviderExample()),
//     );
//   }
// }
//MultiProvider Example

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CreditCard>(create: (_) => CreditCard()),
          ProxyProvider<CreditCard, Customer>(
              update: (
            _,
            creditCard,
            customer,
          ) =>
                  Customer(
                    creditCard: creditCard,
                  )),
        ],
        child: MaterialApp(
          home: ProxyProviderExample(),
        ));
  }
}
//Proxy Provider Example

