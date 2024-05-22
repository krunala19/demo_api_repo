// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_app_messages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelAppMessage _$MLMApiModelAppMessageFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelAppMessage(
      id: (json['id'] as num).toInt(),
      dateEntered: json['date_entered'] as String,
      name: json['name'] as String?,
      text: json['text'] as String?,
      lang: json['lang'] as String?,
      imageUrl: json['image_url'] as String?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MLMApiModelAppMessageToJson(
        MLMApiModelAppMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_entered': instance.dateEntered,
      'name': instance.name,
      'text': instance.text,
      'lang': instance.lang,
      'image_url': instance.imageUrl,
      'url': instance.url,
      'type': instance.type,
      'status': instance.status,
    };
