// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_check_activation_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelCheckActivationCodeRequest
    _$MLMApiModelCheckActivationCodeRequestFromJson(
            Map<String, dynamic> json) =>
        MLMApiModelCheckActivationCodeRequest(
          email: json['email'] as String,
          activationCode: json['activation_code'] as String,
        );

Map<String, dynamic> _$MLMApiModelCheckActivationCodeRequestToJson(
        MLMApiModelCheckActivationCodeRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'activation_code': instance.activationCode,
    };
