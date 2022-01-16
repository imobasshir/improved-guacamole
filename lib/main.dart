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
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  title: Text(
                    'Bio Data',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/flutter.png'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Flutter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'Dart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'This is a flutter dart which is used to teach Flutter.',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
