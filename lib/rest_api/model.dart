// To parse this JSON data, do
//
//     final comment = commentFromJson(jsonString);

// import 'dart:convert';

// List<Comment> commentFromJson(String str) => List<Comment>.from(json.decode(str).map((x) => Comment.fromJson(x)));

// String commentToJson(List<Comment> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Comment {
    Comment({
        required this.postId,
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    final int postId;
    final int id;
    final String name;
    final String email;
    final String body;

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

  //   Map<String, dynamic> toJson() => {
  //       "postId": postId,
  //       "id": id,
  //       "name": name,
  //       "email": email,
  //       "body": body,
  //   };

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  
  //   return other is Comment &&
  //     other.postId == postId &&
  //     other.id == id &&
  //     other.name == name &&
  //     other.email == email &&
  //     other.body == body;
  // }

  // @override
  // int get hashCode {
  //   return postId.hashCode ^
  //     id.hashCode ^
  //     name.hashCode ^
  //     email.hashCode ^
  //     body.hashCode;
  // }
}
