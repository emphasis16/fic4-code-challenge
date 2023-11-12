// {
//   "name": "Farrelino Arvia",
//   "email": "farrelino.arvia@gmail.com",
//   "registration_date_millis": 12313241251515
// }

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'new_user.g.dart';

@JsonSerializable()
class NewUser {
  final String name;
  final String email;
  @JsonKey(name: 'registration_date_millis')
  final int registrationDateMillis;

  NewUser({
    required this.name,
    required this.email,
    required this.registrationDateMillis,
  });

  factory NewUser.fromJson(String jsonData) =>
      _$NewUserFromJson(jsonDecode(jsonData));

  String toJson() => jsonEncode(_$NewUserToJson(this));
}
