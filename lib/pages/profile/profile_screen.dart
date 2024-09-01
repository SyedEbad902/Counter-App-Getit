import 'package:dep_injection/pages/profile/profile_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileServices>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Sceen"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          profileProvider.adValue();
        },
        child: Icon(Icons.add),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Consumer<ProfileServices>(
              builder: (context, profileService, child) {
            return Text(
              'Counter Value: ${profileService.counter}',
              style: TextStyle(fontSize: 24),
            );
          }),
          // child: Text(
          //   "${profileProvider.counter}",
          //   style: TextStyle(fontSize: 25),
          // ),
        ),
      ),
    );
  }
}
