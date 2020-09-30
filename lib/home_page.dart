import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.amber,
      ),
    );
  }

  void _onBtmItemClick(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
    });
  }
}
