import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  String data;
  Data({required this.data});

  Future<void> loadDatabyButton() async {
    await Future.delayed(const Duration(seconds: 1));
    Data(data: "New Data from Server , triggered by button");
    notifyListeners();
    debugPrint(data);
  }
}
