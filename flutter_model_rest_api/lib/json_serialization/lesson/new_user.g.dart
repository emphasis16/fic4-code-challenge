// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewUser _$NewUserFromJson(Map<String, dynamic> json) => NewUser(
      name: json['name'] as String,
      email: json['email'] as String,
      registrationDateMillis: json['registration_date_millis'] as int,
    );

Map<String, dynamic> _$NewUserToJson(NewUser instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'registration_date_millis': instance.registrationDateMillis,
    };
