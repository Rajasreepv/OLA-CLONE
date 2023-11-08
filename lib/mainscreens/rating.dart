import 'package:flutter/material.dart';

class rating extends StatefulWidget {
  const rating({super.key});

  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Rating")),
    );
  }
}
