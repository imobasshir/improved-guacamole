import 'package:flutter/material.dart';
import 'button.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.indigo,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(bottom: 62.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: 'AC'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: 'C'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '%'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '7'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '8'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '9'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: 'x'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '4'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '5'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '6'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '1'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '2'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '3'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '0'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '00'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '.'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalulatorButton(text: '='),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
