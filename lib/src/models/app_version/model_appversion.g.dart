// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_appversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelAppVersion _$MLMApiModelAppVersionFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelAppVersion(
      minAppVersion: json['min_app_version'] as String?,
      minApiVersion: json['min_api_version'] as String?,
    );

Map<String, dynamic> _$MLMApiModelAppVersionToJson(
        MLMApiModelAppVersion instance) =>
    <String, dynamic>{
      'min_app_version': instance.minAppVersion,
      'min_api_version': instance.minApiVersion,
    };
