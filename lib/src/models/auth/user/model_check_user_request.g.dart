// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_check_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelCheckUserRequest _$MLMApiModelCheckUserRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelCheckUserRequest(
      pan: json['pan'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$MLMApiModelCheckUserRequestToJson(
        MLMApiModelCheckUserRequest instance) =>
    <String, dynamic>{
      'pan': instance.pan,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birthday': instance.birthday,
    };
