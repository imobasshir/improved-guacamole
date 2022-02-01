import 'package:flutter/material.dart';

class CalulatorButton extends StatelessWidget {
  final String text;
  final Function callback;
  const CalulatorButton({
    Key? key,
    required this.text,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        callback(text);
      },
      child: Text(text),
    );
  }
}
