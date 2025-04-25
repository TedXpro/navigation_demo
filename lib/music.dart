import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Music")),
      body: Center(
        child: Icon(Icons.audiotrack, size: 180, color: const Color.fromARGB(255, 120, 28, 1)),
      ),
    );
  }
}
