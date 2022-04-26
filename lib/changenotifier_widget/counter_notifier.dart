import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int counter = 0;

  void increase() {
    counter++;
    notifyListeners();
  }

  void decrease() {
    if (counter > 0) {
      counter--;
      notifyListeners();
    }
  }
}
