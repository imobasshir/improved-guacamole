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
        color: Colors.lightGreen,
      ),
      textScaleFactor: 2.2,
    ),
    Text(
      'Index 1: Music',
      style: TextStyle(
        color: Colors.lime,
      ),
      textScaleFactor: 2.2,
    ),
    Text(
      'Index 2: Places',
      style: TextStyle(
        color: Colors.amberAccent,
      ),
      textScaleFactor: 2.2,
    ),
    Text(
      'Index 3: News',
      style: TextStyle(
        color: Colors.cyanAccent,
      ),
      textScaleFactor: 2.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar'),
      ),
      body: Center(
        child: _bodyOption[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Favorites',
            backgroundColor: Colors.lightGreen,
            icon: Icon(
              Icons.favorite,
              // color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            backgroundColor: Colors.lime,
            icon: Icon(
              Icons.music_note,
              // color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            backgroundColor: Colors.amberAccent,
            icon: Icon(
              Icons.location_on,
              // color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'News',
            backgroundColor: Colors.cyanAccent,
            icon: Icon(
              Icons.library_books,
              // color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
