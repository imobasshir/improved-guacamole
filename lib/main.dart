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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('images/flutter.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
