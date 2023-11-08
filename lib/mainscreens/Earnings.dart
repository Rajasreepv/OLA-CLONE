import 'package:flutter/material.dart';

class earnings extends StatefulWidget {
  const earnings({super.key});

  @override
  State<earnings> createState() => _earningsState();
}

class _earningsState extends State<earnings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Earnings"),
    );
  }
}
