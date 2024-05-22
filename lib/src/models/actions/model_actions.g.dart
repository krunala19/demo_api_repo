// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelActionsResponse _$MLMApiModelActionsResponseFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelActionsResponse(
      personal: (json['personal'] as List<dynamic>?)
          ?.map((e) => MLMobileModelAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      all: (json['all'] as List<dynamic>?)
          ?.map((e) => MLMobileModelAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelActionsResponseToJson(
        MLMApiModelActionsResponse instance) =>
    <String, dynamic>{
      'personal': instance.personal,
      'all': instance.all,
    };

MLMobileModelAction _$MLMobileModelActionFromJson(Map<String, dynamic> json) =>
    MLMobileModelAction(
      id: (json['id'] as num?)?.toInt(),
      dateEntered: json['date_entered'] as String?,
      name: json['name'] as String?,
      nameShort: json['name_short'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      description: json['description'] as String?,
      descriptionShort: json['description_short'] as String?,
      pictureSmall: json['picture_small'] as String?,
      pictureBig: json['picture_big'] as String?,
      linkUrl: json['link_url'] as String?,
      type: json['type'] as String?,
      rewardPrice: (json['reward_price'] as num?)?.toInt(),
      stampingNumber: (json['stamping_number'] as num?)?.toInt(),
      rewardTreshold: (json['reward_treshold'] as num?)?.toInt(),
      rewardTresholdType: json['reward_treshold_type'] as String?,
      rewardQuantity: (json['reward_quantity'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      stamps: (json['stamps'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MLMobileModelActionToJson(
        MLMobileModelAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_entered': instance.dateEntered,
      'name': instance.name,
      'name_short': instance.nameShort,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'description': instance.description,
      'description_short': instance.descriptionShort,
      'picture_small': instance.pictureSmall,
      'picture_big': instance.pictureBig,
      'link_url': instance.linkUrl,
      'type': instance.type,
      'reward_price': instance.rewardPrice,
      'stamping_number': instance.stampingNumber,
      'reward_treshold': instance.rewardTreshold,
      'reward_treshold_type': instance.rewardTresholdType,
      'reward_quantity': instance.rewardQuantity,
      'status': instance.status,
      'stamps': instance.stamps,
    };
