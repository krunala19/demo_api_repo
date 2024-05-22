// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelForgotPasswordRequest _$MLMApiModelForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelForgotPasswordRequest(
      email: json['email'] as String,
      deviceId: json['device_id'] as String,
      devicePn: json['device_pn'] as String,
    );

Map<String, dynamic> _$MLMApiModelForgotPasswordRequestToJson(
        MLMApiModelForgotPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'device_id': instance.deviceId,
      'device_pn': instance.devicePn,
    };
