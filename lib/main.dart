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
              Image.asset('images/learn_hero.png'),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Learning Flutter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Learning Flutter by learning hero',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.star_rate,
                      color: Colors.red,
                    ),
                    const Text(
                      '5',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Phone',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.directions,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Route',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
