// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengguna.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pengguna _$PenggunaFromJson(Map<String, dynamic> json) => Pengguna(
      name: json['name'] as String,
      email: json['email'] as String,
      registrationDateMillis: json['registration_date_millis'] as num,
    );

Map<String, dynamic> _$PenggunaToJson(Pengguna instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'registration_date_millis': instance.registrationDateMillis,
    };
