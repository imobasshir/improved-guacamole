import 'package:flutter/material.dart';
import 'button.dart';
import 'package:math_expressions/math_expressions.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String _history = '';
  String _expression = '';

  void numOnClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _expression = '';
      _history = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.only(bottom: 62.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 56.0, left: 56.0),
              child: Text(
                _history,
                textScaleFactor: 2.0,
                style: const TextStyle(color: Colors.grey),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Container(
              padding: const EdgeInsets.only(right: 56.0, left: 56.0),
              child: Text(
                _expression,
                textScaleFactor: 3.0,
                style: const TextStyle(color: Colors.white),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: 'AC',
                    callback: allClear,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: 'C',
                    callback: clear,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '%',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '/',
                    callback: numOnClick,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '7',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '8',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '9',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '*',
                    callback: numOnClick,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '4',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '5',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '6',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '-',
                    callback: numOnClick,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '1',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '2',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '3',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '+',
                    callback: numOnClick,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '0',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '00',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '.',
                    callback: numOnClick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalulatorButton(
                    text: '=',
                    callback: evaluate,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
