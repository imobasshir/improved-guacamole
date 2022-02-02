import 'package:flutter/material.dart';
import 'dart:convert';

class JsonLoad extends StatefulWidget {
  const JsonLoad({Key? key}) : super(key: key);

  @override
  State<JsonLoad> createState() => _JsonLoadState();
}

class _JsonLoadState extends State<JsonLoad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Loader'),
      ),
      body: Container(
        child: Center(
            child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('json_load/person.json'),
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
            );
          }),
        )),
      ),
    );
  }
}
