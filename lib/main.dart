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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text('Learning Flutter'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('Learning Flutter by learning hero'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.star_rate,
                  ),
                  const Text('5'),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.phone,
                      ),
                      Text('Phone'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.directions,
                      ),
                      Text('Route'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.share,
                      ),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
              Row(
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
            ],
          ),
        ),
      ),
    );
  }
}
