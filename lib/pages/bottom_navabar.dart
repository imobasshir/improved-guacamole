import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  _MyBottomNavState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _currentIndex = 0;
  static const List<Widget> _bodyOption = <Widget>[
    Text(
      'Index 0: Favorates',
      style: TextStyle(
        color: Colors.blue,
      ),
      textScaleFactor: 2.2,
    ),
    Text(
      'Index 1: Music',
      style: TextStyle(
        color: Colors.blue,
      ),
      textScaleFactor: 2.2,
    ),
    Text(
      'Index 2: Places',
      style: TextStyle(
        color: Colors.blue,
      ),
      textScaleFactor: 2.2,
    ),
    Text(
      'Index 3: News',
      style: TextStyle(
        color: Colors.blue,
      ),
      textScaleFactor: 2.2,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar'),
      ),
      body: Center(
        child: _bodyOption.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
