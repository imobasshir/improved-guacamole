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
        body: Center(
          child: Image(
            image: AssetImage('images/flutter.png'),
          ),
        ),
      ),
    );
  }
}
