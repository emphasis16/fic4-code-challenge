// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_model_rest_spi/json_serialization/json_generator/pengguna.dart';

void main() {
  const String jsonString = """
{
  "name": "Farrelino Arvia",
  "email": "farrelino.arvia@gmail.com",
  "registration_date_millis": 12313241251515
}
""";

  var pengguna = Pengguna.fromJson(jsonString);

  print('Halo, ${pengguna.name}');
  print('Email verification: ${pengguna.name}');
  print('Regis: ${pengguna.registrationDateMillis}');

  String jsonStringManual = jsonEncode(<String, dynamic>{
    "name": pengguna.name,
    "email": pengguna.email,
    "registration_date_millis": pengguna.registrationDateMillis,
  });
  String json = jsonEncode(pengguna);

  print('String json: $json');
  print('String json manual: $jsonStringManual');
}
