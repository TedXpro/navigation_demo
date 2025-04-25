import 'package:flutter/material.dart';

class Flight extends StatelessWidget {
  const Flight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Take off")),
      body: Center(
        child: Icon(Icons.flight, size: 180, color: const Color.fromARGB(255, 11, 144, 44)),
      ),
    );
  }
}
