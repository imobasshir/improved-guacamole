import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/pages/chats.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert_outlined),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(
              horizontal: 24.5,
              vertical: 0.0,
            ),
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Icon(
              Icons.camera_alt,
              size: 150,
            ),
            ChatsView(),
            Center(
              child: Text(
                'Status will apper over here',
                textScaleFactor: 1.8,
              ),
            ),
            Center(
              child: Text(
                'Calls will apper over here',
                textScaleFactor: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
