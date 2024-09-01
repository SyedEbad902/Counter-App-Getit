import 'package:dep_injection/services/counter_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setup() {
  locator.registerSingleton<CounterService>(CounterService());

// Alternatively you could write it if you don't like global variables
}
