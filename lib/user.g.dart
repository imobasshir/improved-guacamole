// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String,
      age: json['age'] as String,
      height: json['height'] as String,
      weight: json['weight'] as String,
      gender: json['gender'] as String,
      haircolor: json['haircolor'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'gender': instance.gender,
      'haircolor': instance.haircolor,
    };
