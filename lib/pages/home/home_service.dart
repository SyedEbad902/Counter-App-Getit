import 'package:dep_injection/services/counter_service.dart';
import 'package:flutter/material.dart';
import "package:dep_injection/pages/getit.dart";

class HomeService extends ChangeNotifier {
  final homeLocator = locator<CounterService>();
  // locator<CounterService> homeService = CounterService();
  int get counter => homeLocator.counter;
  addvalue() {
    homeLocator.increment();
    notifyListeners();
  }
}
