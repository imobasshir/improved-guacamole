import 'dart:convert';
import 'package:flutter/material.dart';

class LoadJson extends StatefulWidget {
  const LoadJson({Key? key}) : super(key: key);

  @override
  _LoadJsonState createState() => _LoadJsonState();
}

class _LoadJsonState extends State<LoadJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JsonLoader'),
      ),
      body: Container(
        child: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('jsons/person.json'),
          builder: ((context, snapshot) {
            var mydata = jsonDecode(snapshot.data.toString());

            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      Text("Name: " + mydata[index]['name']),
                      Text("Age: " + mydata[index]['age']),
                      Text("Height: " + mydata[index]['height']),
                      Text("Weight: " + mydata[index]['weight']),
                      Text("Gender: " + mydata[index]['gender']),
                      Text("Hair Color: " + mydata[index]['haircolor']),
                    ],
                  ),
                );
              },
              itemCount: mydata == null ? 0 : mydata.length,
              // itemCount: 4,
            );
          }),
        ),
      ),
    );
  }
}
