import 'package:flutter/material.dart';
import 'package:instagram/feed_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
    BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('')),
    BottomNavigationBarItem(icon: Icon(Icons.healing), title: Text('')),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('')),
  ];

  int _selectedIndex = 0;

  static List<Widget> _screen = <Widget>[
    FeedScreen(),
    Container(
      color: Colors.amberAccent,
    ),
    Container(
      color: Colors.cyanAccent,
    ),
    Container(
      color: Colors.indigoAccent,
    ),
    Container(
      color: Colors.limeAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black87,
        items: btmNavItems,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,
      ),
      body: _screen[_selectedIndex],
    );
  }

  void _onBtmItemClick(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
    });
  }
}
