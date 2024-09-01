import 'package:flutter/material.dart';

class CounterService extends ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
    print(counter);
  }
}
