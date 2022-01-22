import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.asset('images/learn_hero.png'),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'TextField Intro',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Name'),
                    hintText: 'Enter Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: 'Enter Password',
                  ),
                  obscureText: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
