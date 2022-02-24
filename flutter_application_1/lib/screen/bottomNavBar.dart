import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  int _menuIndexSelected = 0;
  bool isMenuBarTapped = false;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'HOME PAGE',
      style: optionStyle,
    ),
    Text(
      'COURSE PAGE',
      style: optionStyle,
    ),
    Text(
      'CONTACT GFG',
      style: optionStyle,
    ),
    Text(
      'Manage Alarm Setting',
      style: optionStyle,
    ),
  ];

  static const List<Widget> _menuWidgetOptions = <Widget>[
    Text(
      'Music PAGE',
      style: optionStyle,
    ),
    Text(
      'Music Video PAGE',
      style: optionStyle,
    ),
    Text(
      'Photo collection',
      style: optionStyle,
    ),
    Text(
      'Mail Box',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    isMenuBarTapped = false;
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onMenuTap(int index) {
    isMenuBarTapped = true;
    setState(() {
      _menuIndexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.music_note)),
            Tab(icon: Icon(Icons.music_video)),
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(icon: Icon(Icons.email)),
          ],
          onTap: _onMenuTap,
        ),
        title: const Text('Techno Solution'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: isMenuBarTapped
            ? _menuWidgetOptions.elementAt(_menuIndexSelected)
            : _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: ('Courses'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: ('Mail'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: ('Alarm'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
