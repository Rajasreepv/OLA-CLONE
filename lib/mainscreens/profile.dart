import 'package:flutter/material.dart';
import 'package:ride_app/global/global.dart';
import 'package:ride_app/splashScreen/splash_screen.dart';
import 'package:ride_app/widgets/divider.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(3, 30, 3, 0),
          child: ListView(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  radius: 60,
                ),
                title: Text(
                  "Profile Name",
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              divider(),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.history,
                  color: Color.fromARGB(255, 5, 71, 65),
                ),
                title: Text("History"),
              ),
              ListTile(
                leading:
                    Icon(Icons.money, color: Color.fromARGB(255, 5, 71, 65)),
                title: Text("Earning"),
              ),
              ListTile(
                leading:
                    Icon(Icons.info, color: Color.fromARGB(255, 5, 71, 65)),
                title: Text("Help"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
