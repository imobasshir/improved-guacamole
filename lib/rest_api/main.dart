import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/rest_api/api_call.dart';
import 'package:flutter_test_application_1/rest_api/model.dart';

class RestApiCall extends StatefulWidget {
  const RestApiCall({Key? key}) : super(key: key);

  @override
  _RestApiCallState createState() => _RestApiCallState();
}

class _RestApiCallState extends State<RestApiCall> {
  late Future<List<Comment>> futureComment;
  @override
  void initState() {
    super.initState();
    futureComment = CommentsCall().getComment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Call'),
      ),
      body: FutureBuilder<List<Comment>>(
          future: futureComment,
          builder: (context, AsyncSnapshot<List<Comment>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(snapshot.data![index].body.toString()),
                    subtitle: Text(snapshot.data![index].email.toString()),
                  ),
                );
              });
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
