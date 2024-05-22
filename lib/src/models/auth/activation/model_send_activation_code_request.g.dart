// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_send_activation_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelSendActivationCodeRequest
    _$MLMApiModelSendActivationCodeRequestFromJson(Map<String, dynamic> json) =>
        MLMApiModelSendActivationCodeRequest(
          email: json['email'] as String,
          oib: json['oib'] as String?,
          deviceId: json['device_id'] as String,
          devicePn: json['device_pn'] as String,
        );

Map<String, dynamic> _$MLMApiModelSendActivationCodeRequestToJson(
        MLMApiModelSendActivationCodeRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'oib': instance.oib,
      'device_id': instance.deviceId,
      'device_pn': instance.devicePn,
    };
