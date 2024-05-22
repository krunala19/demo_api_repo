// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_create_child_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelCreateChildUserRequest _$MLMApiModelCreateChildUserRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelCreateChildUserRequest(
      id: json['id'] as String,
      pin: (json['pin'] as num).toInt(),
      data: json['data'],
      email: json['email'] as String,
    );

Map<String, dynamic> _$MLMApiModelCreateChildUserRequestToJson(
        MLMApiModelCreateChildUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'pin': instance.pin,
      'data': instance.data,
    };
