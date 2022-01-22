import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'You are logged in',
            style: TextStyle(
              fontSize: 22,
              fontStyle: FontStyle.italic,
              color: Colors.lightBlueAccent,
            ),
            textScaleFactor: 2.0,
          ),
        ),
      ),
    );
  }
}
