import 'package:flutter/material.dart';

class CalulatorButton extends StatelessWidget {
  final String text;
  const CalulatorButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
