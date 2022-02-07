/*
{
  "status": "ok",
  "totalResults": 38,
  "articles": [
    {
      "source": {
        "name": "NDTV News"
      },
      "title": "Tweet - NDTV",
      "description": "",
      "url": "",
      "urlToImage": "",
      "publishedAt": "2022-02-06T17:18:08Z",
    },
  ]
}
*/

// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

// To parse this JSON data, do
//
//     final News = NewsFromJson(jsonString);

import 'dart:convert';

News newsFromJson(String str) => News.fromJson(json.decode(str));



class News {
    News({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    final String status;
    final int totalResults;
    final List<Article> articles;

    factory News.fromJson(Map<String, dynamic> json) => News(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

}

class Article {
    Article({
        required this.source,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
    });

    final Source source;
    final String title;
    final String description;
    final String url;
    final String urlToImage;
    final DateTime publishedAt;

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

}

class Source {
    Source({
        required this.name,
    });

    final String name;

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        name: json["name"],
    );

}
