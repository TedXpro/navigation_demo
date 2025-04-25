import 'package:flutter/material.dart';
import 'package:navigation_demo/birthdays.dart';
import 'package:navigation_demo/flight.dart';
import 'package:navigation_demo/music.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List _listPages = [];
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages
      ..add(Birthdays())
      ..add(Music())
      ..add(Flight()); // .. is a cascaded method
    _currentPage = Birthdays();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      // to set the stage meaning any change we want to be updated on the page this method does it for us
      _currentIndex = selectedIndex;
      _currentPage = _listPages[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text("BottomNavigationBarDemo")),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(20), child: _currentPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: "Birthday"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.flight), label: "Flight")
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}
