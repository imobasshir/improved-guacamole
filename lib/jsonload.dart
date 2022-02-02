import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/user.dart';

class LoadJson extends StatefulWidget {
  const LoadJson({Key? key}) : super(key: key);

  @override
  _LoadJsonState createState() => _LoadJsonState();
}

class _LoadJsonState extends State<LoadJson> {
  @override
  void initState() {
    super.initState();
    final user = User(
      name: 'hello',
      age: 'age',
      height: 'height',
      weight: 'weight',
      gender: 'gender',
      haircolor: 'haircolor',
    );
//     Map<String, dynamic> userMap = jsonDecode();
// var user = User.fromJson(userMap);
    final json = user.toJson();
    print('Json: ${user.toJson()}');

    final newUser = User.fromJson(json);
    print('$newUser');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JsonLoader'),
      ),
      body: Container(),
    );
  }
}
