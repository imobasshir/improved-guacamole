import 'package:flutter_test_application_1/rest_api/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CommentsCall {
  List<Comment> commentList = [];
  Future<List<Comment>> getComment() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      for (var item in data) {
        Comment comment = Comment(
          postId: item['postId'],
          id: item['id'],
          name: item['name'],
          email: item['email'],
          body: item['body'],
        );
        commentList.add(comment);
      }
      return commentList;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
