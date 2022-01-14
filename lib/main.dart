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
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 6.0,
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(3.5)),
            ),
            margin: EdgeInsets.all(8.0),
            child: Image.asset('images/flutter.png'),
          ),
        ),
      ),
    );
  }
}
