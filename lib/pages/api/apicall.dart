import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DataFromApi extends StatefulWidget {
  const DataFromApi({Key? key}) : super(key: key);

  @override
  _DataFromApiState createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {
  Future<List<User>> getUserData() async {
    var response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      List<User> users = jsonData.map((data) => User.fromJson(data)).toList();
      // print(users.length);
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
        centerTitle: true,
      ),
      body: Card(
        child: FutureBuilder(
          future: getUserData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].username),
                      trailing: Text(snapshot.data[index].email),
                    ),
                  );
                },
              );
              // return const Center(
              //   child: CircularProgressIndicator(),
              // );
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
              // return ListView.builder(
              //   itemCount: snapshot.data.length,
              //   itemBuilder: (context, index) {
              //     return Card(
              //       child: ListTile(
              //         title: Text(snapshot.data[index].name),
              //         subtitle: Text(snapshot.data[index].username),
              //         trailing: Text(snapshot.data[index].email),
              //       ),
              //     );
              //   },
              // );
            }
          },
        ),
      ),
    );
  }
}

// To parse this JSON data, do

//     final user = userFromJson(jsonString);

// List<User> userFromJson(String str) =>
//     List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

// String userToJson(List<User> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.name,
    required this.username,
    required this.email,
  });

  String name;
  String username;
  String email;

  // Convering List<dynamic> to List<User>
  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        username: json["username"],
        email: json["email"],
      );

  // Map<String, dynamic> toJson() => {
  //       "name": name,
  //       "username": username,
  //       "email": email,
  //     };
}
