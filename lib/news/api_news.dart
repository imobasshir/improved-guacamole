import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/pages/api/apicall.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model.dart';

class NewsApiCall extends StatefulWidget {
  const NewsApiCall({Key? key}) : super(key: key);

  @override
  _NewsApiCallState createState() => _NewsApiCallState();
}

class _NewsApiCallState extends State<NewsApiCall> {
  Future<NewsModel> fetchNewsList() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=71de2801cfaf4f53a09c73b0f9eec2a3";

    final response = await http.get(Uri.parse(url));

    // final queryParameters = {
    //   'country': 'in',
    //   // 'category': 'technology',
    //   'apiKey': '71de2801cfaf4f53a09c73b0f9eec2a3'
    // };
    // final uri = Uri.https('newsapi.org', '/v2/top-headlines', queryParameters);
    // final response = await http.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      return NewsModel.fromJson(json.decode(response.body));
      // final news = jsonData.map((data) => News.fromJson(data)).toList();
      // List<dynamic> body = jsonData['articles'];
      // List<Article> article =
      //     body.map((dynamic data) => Article.fromJson(data)).toList();
      // return article;
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Headlines'),
        centerTitle: true,
      ),
      body: FutureBuilder<NewsModel>(
        future: fetchNewsList(),
        builder: (context, AsyncSnapshot snapshot) {
          // final List<NewsModel> posts = snapshot.data;
          if (snapshot.hasData) {
            // return Text('${snapshot.data[0]['description']}');
            //  return Text(snapshot.data);
            return ListView.builder(
              itemBuilder: ((context, index) => ListTile(
                    title: Text(snapshot.data[index].title),
                  )),
            );
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
        },
      ),
    );
  }
}
