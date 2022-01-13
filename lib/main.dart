import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: null,
            tooltip: 'Menu',
            icon: Icon(Icons.menu),
          ),
          title: Text('App Bar'),
          actions: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search_rounded),
            ),
          ],
        ),
        backgroundColor: Colors.amber,
        body: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
          color: Colors.white,
          height: 50.0,
          width: double.infinity,
        ),
      ),
    );
  }
}
