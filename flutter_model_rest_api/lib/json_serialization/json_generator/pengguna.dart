import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'pengguna.g.dart';

@JsonSerializable()
class Pengguna {
  final String name;
  final String email;
  @JsonKey(name: 'registration_date_millis')
  final num registrationDateMillis;

  Pengguna({
    required this.name,
    required this.email,
    required this.registrationDateMillis,
  });

  factory Pengguna.fromJson(String jsonString) =>
      _$PenggunaFromJson(jsonDecode(jsonString));

  String toJson() => jsonEncode(_$PenggunaToJson(this));
}
