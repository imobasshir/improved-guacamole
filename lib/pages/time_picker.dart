import 'package:flutter/material.dart';

class TimePick extends StatefulWidget {
  const TimePick({Key? key}) : super(key: key);

  @override
  State<TimePick> createState() => _TimePickState();
}

class _TimePickState extends State<TimePick> {
  TimeOfDay _time = TimeOfDay.now();
  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              _selectTime();
            },
            child: const Center(
              child: Text(
                'Select Time',
                textScaleFactor: 2.6,
              ),
            ),
          ),
          Text(
            'Selected time: ${_time.format(context)}',
            style: const TextStyle(
              color: Colors.blue,
            ),
            textScaleFactor: 1.4,
          ),
        ],
      ),
    );
  }
}
