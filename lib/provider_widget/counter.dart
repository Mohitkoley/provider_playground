import "package:flutter/foundation.dart";

class Counter {
  int number = 0;

  void increase() {
    number++;
    debugPrint("$number");
  }

  void decrease() {
    number--;
    debugPrint("$number");
  }
}
