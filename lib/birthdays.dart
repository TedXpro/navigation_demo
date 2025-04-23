import 'package:flutter/material.dart';

class Birthdays extends StatelessWidget {
  const Birthdays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happy Birthday"),
      ),
      body: Center(
        child: Icon(Icons.cake, size: 180, color: Colors.lightBlueAccent),
      ),
    );
  }
}
