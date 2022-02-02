import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name, age, height, weight, gender, haircolor;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
    required this.gender,
    required this.haircolor,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
