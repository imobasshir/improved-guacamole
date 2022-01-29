import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: CircleAvatar(),
          title: Text('Ibrahim'),
          trailing: Icon(
            Icons.done_all_outlined,
            size: 20,
          ),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Ibrahim'),
          subtitle: Text('Done'),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Ibrahim'),
          trailing: Icon(
            Icons.done_all_outlined,
            size: 20,
          ),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Ibrahim'),
        ),
      ],
    );
  }
}
