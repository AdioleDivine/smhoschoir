import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:smhoschoir/Screens/Home.dart';
class Navigations extends StatefulWidget {
  // static const routeName = '/nav';
  @override
  _NavigationsState createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  final List<Widget> _pages = [
    Home()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: _selectedIndex,
        showElevation: false,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            activeColor: Colors.blue[900],
            icon: Icon(Icons.home, color: Colors.blue),
            title: Text('Home'),
          ),
          BottomNavyBarItem(
            activeColor: Colors.blue[900],
            icon: Icon(Icons.person, color: Colors.blue),
            title: Text('Leaders'),
          ),
        ],
      ),
    );
  }
}
