// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_model_rest_spi/json_serialization/json_manual/user.dart';

void main() {
  const String jsonString = """
{
  "name": "Farrelino Arvia",
  "email": "neoasriel632@gmail.com"
}
""";
  var user = User.fromJson(jsonDecode(jsonString));

  print('Halo, ${user.name}');
  print('Here is your email verification: ${user.email}');

  String jsonEncoded = jsonEncode(<String, dynamic>{
    'name': user.name,
    'email': user.email,
  });

  print('String json: $jsonEncoded');
}
