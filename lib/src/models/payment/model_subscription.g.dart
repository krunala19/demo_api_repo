// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLModelApiSubscription _$MLModelApiSubscriptionFromJson(
        Map<String, dynamic> json) =>
    MLModelApiSubscription(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      totalPrice: json['total_price'] as String?,
      expirationPeriod: json['expiration_period'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      status: (json['status'] as num?)?.toInt(),
      dateEntered: json['date_entered'] == null
          ? null
          : DateTime.parse(json['date_entered'] as String),
      dateModified: json['date_modified'] == null
          ? null
          : DateTime.parse(json['date_modified'] as String),
      buttonHtml: json['button_html'] as String?,
    );

Map<String, dynamic> _$MLModelApiSubscriptionToJson(
        MLModelApiSubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total_price': instance.totalPrice,
      'expiration_period': instance.expirationPeriod,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'status': instance.status,
      'date_entered': instance.dateEntered?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'button_html': instance.buttonHtml,
    };

MLModelApiSubscriptionsResponse _$MLModelApiSubscriptionsResponseFromJson(
        Map<String, dynamic> json) =>
    MLModelApiSubscriptionsResponse(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => MLModelApiSubscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLModelApiSubscriptionsResponseToJson(
        MLModelApiSubscriptionsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
