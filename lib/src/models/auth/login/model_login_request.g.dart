// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelLoginRequest _$MLMApiModelLoginRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelLoginRequest(
      pan: json['pan'] as String,
      pin: (json['pin'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      marketing: (json['marketing'] as num).toInt(),
      deviceId: json['device_id'] as String,
      devicePn: json['device_pn'] as String,
    );

Map<String, dynamic> _$MLMApiModelLoginRequestToJson(
        MLMApiModelLoginRequest instance) =>
    <String, dynamic>{
      'pan': instance.pan,
      'pin': instance.pin,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'marketing': instance.marketing,
      'device_id': instance.deviceId,
      'device_pn': instance.devicePn,
    };
