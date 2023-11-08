import 'package:flutter/material.dart';
import 'package:ride_app/global/global.dart';
import 'package:ride_app/splashScreen/splash_screen.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("profile"),
        TextButton(
            onPressed: () {
              fAuth.signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => const MySplashScreen()));
            },
            child: Text("signout"))
      ],
    ));
  }
}
