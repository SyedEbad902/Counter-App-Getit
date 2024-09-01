import 'package:dep_injection/pages/getit.dart';
import 'package:dep_injection/services/counter_service.dart';
import 'package:flutter/material.dart';

class ProfileServices extends ChangeNotifier {
  // CounterService profileService = CounterService();
  final profileLocator = locator<CounterService>();

  int get counter => profileLocator.counter;
  adValue() {
    profileLocator.increment();
    notifyListeners();
  }
}
