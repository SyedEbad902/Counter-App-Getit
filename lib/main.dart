import 'package:dep_injection/pages/getit.dart';
import 'package:dep_injection/pages/home/home_service.dart';
import 'package:dep_injection/pages/profile/profile_services.dart';
import 'package:dep_injection/services/counter_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home/home_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterService()),
        ChangeNotifierProvider(create: (_) => HomeService()),
        ChangeNotifierProvider(create: (_) => ProfileServices()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
    //
  }
}
