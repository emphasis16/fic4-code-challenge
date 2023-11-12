// ignore_for_file: avoid_print

import 'dart:convert';

void main() {
  const String jsonString = """
{
  "name": "Farrelino Arvia",
  "email": "neoasriel632@gmail.com"
}
""";

  Map<String, dynamic> user = jsonDecode(jsonString);

  print('Halo, ${user["name"]}');
  print('Email verification: ${user["email"]}');
}
