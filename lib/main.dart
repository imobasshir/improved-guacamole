import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
          ),
          title: Text('AppBar Demo'),
          backgroundColor: Colors.amberAccent,
          actions: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.alarm),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search_rounded),
            ),
          ],
        ),
      ),
    ),
  );
}
