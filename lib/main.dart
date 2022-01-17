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
          child: ListView(
            children: [
              const Card(
                child: ListTile(
                  title: Text(
                    'Resume',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: const [
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
                  ],
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text(
                    'This is a flutter dart which is used to teach Flutter.',
                  ),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text(
                    'Skills: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    'Flutter Widgets, Material Widgets',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
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
