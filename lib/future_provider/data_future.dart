import 'package:provider_playground/future_provider/data.dart';

Future<Data> LoadData() async {
  await Future.delayed(const Duration(seconds: 3));
  return Data(data: "Data from Server");
}
