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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text('Learning Hero'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('Learning hero by Flutter'),
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
            ],
          ),
        ),
      ),
    );
  }
}
