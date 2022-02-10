import 'package:flutter/material.dart';

class NewView extends StatelessWidget {
  const NewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Appbar',
        ),
        backgroundColor: const Color.fromARGB(188, 33, 149, 243),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.asset('images/flutter.png'),
            ),
          ),
        ],
      ),
    );
  }
}
