import 'package:dep_injection/pages/home/home_service.dart';
import 'package:dep_injection/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // CounterService homeCounter = CounterService();
  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Sceen"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeProvider.addvalue();
        },
        child: Icon(Icons.add),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Consumer<HomeService>(
              builder: (context, homeService, child) {
                return Text(
                  'Counter Value: ${homeService.counter}',
                  style: TextStyle(fontSize: 24),
                );}),
              // Text(
              //   "${homeProvider.counter}",
              //   style: TextStyle(fontSize: 25),
              // ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen())).then((_) {
                      // After coming back from SecondScreen, rebuild to show updated value
                      setState(() {});
                    }); 
                  },
                  child: Text("Go to profile")),
            ],
          ),
        ),
      ),
    );
  }
}
