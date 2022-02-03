import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/pages/api_decode/api.dart';

class MyApiCall extends StatefulWidget {
  const MyApiCall({Key? key}) : super(key: key);

  @override
  _MyApiCallState createState() => _MyApiCallState();
}

class _MyApiCallState extends State<MyApiCall> {
  late Future<Users> users;

  @override
  void initState() {
    super.initState();
    users = getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Calls in Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Users>(
            future: users,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  children: [
                    Card(
                      child: ListTile(
                        title: Text(snapshot.data!.name),
                        subtitle: Text(snapshot.data!.email),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
