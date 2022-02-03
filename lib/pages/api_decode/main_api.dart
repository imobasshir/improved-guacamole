import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/pages/api_decode/api.dart';

class MyApiCall extends StatefulWidget {
  const MyApiCall({Key? key}) : super(key: key);

  @override
  _MyApiCallState createState() => _MyApiCallState();
}

class _MyApiCallState extends State<MyApiCall> {
  // late Future<Users> users;

  @override
  void initState() {
    super.initState();
    // users = getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Calls in Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<Users>>(
            future: getUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final List<Users>? posts = snapshot.data;
                return ListView.builder(
                  itemCount: posts?.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(posts![index].name),
                        subtitle: Text(posts[index].email),
                      ),
                    );
                  },
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
