import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: null,
            tooltip: 'Menu',
            icon: Icon(Icons.menu),
          ),
          title: Text('AppBar Demo'),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite),
              tooltip: 'Favoraite',
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search_rounded),
              tooltip: 'Search',
            ),
          ],
        ),
      ),
    ),
  );
}
