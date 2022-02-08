import 'package:flutter/material.dart';

class EasyRead extends StatefulWidget {
  const EasyRead({Key? key}) : super(key: key);

  @override
  _EasyReadState createState() => _EasyReadState();
}

class _EasyReadState extends State<EasyRead> {
  double _fontSize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.done,
              style: TextStyle(
                fontSize: _fontSize,
              ),
              maxLines: null,
            ),
          ),
          Slider(
            value: _fontSize,
            onChanged: (newSize) {
              setState(() {
                _fontSize = newSize;
              });
            },
            max: 200,
            min: 20,
          ),
        ],
      ),
    );
  }
}
