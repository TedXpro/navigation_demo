import 'package:flutter/material.dart';
import 'package:navigation_demo/birthdays.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Birthdays()),
          );
        },
        child: Icon(Icons.play_arrow, size: 72),
      ),
    );
  }
}
