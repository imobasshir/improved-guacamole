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
  Future<News> getNews() async {
    final queryParameters = {
      'country': 'in',
      // 'category': 'technology',
      'apiKey': '71de2801cfaf4f53a09c73b0f9eec2a3'
    };
    final uri = Uri.https('newsapi.org', '/v2/top-headlines', queryParameters);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final news = News.fromJson(jsonData);
      // final news = jsonData.map((data) => News.fromJson(data)).toList();
      // List<dynamic> body = jsonData['articles'];
      // List<Article> article =
      //     body.map((dynamic data) => Article.fromJson(data)).toList();
      return news;
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
      body: FutureBuilder(
        future: getNews(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(snapshot.data[index].title),
                    // subtitle: ,
                  ),
                );
              },
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
