import 'package:flutter/material.dart';

class FlashCardView extends StatelessWidget {
  const FlashCardView({
    Key? key,
    required this.text,
    required this.elev,
  }) : super(key: key);

  final String text;
  final double elev;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elev,
      child: Center(
        child: Text(
          text,
          textScaleFactor: 1.4,
        ),
      ),
    );
  }
}
