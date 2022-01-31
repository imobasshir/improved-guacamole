import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String myText = 'HelloWorld';
  void _clickMe() {
    setState(() {
      if (myText.startsWith('H')) {
        myText = 'MobasshirHello';
      } else {
        myText = 'HelloWorld';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myText),
            ElevatedButton(
              onPressed: _clickMe,
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
