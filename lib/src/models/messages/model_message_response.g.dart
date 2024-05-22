// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelMessageResponse _$MLMApiModelMessageResponseFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelMessageResponse(
      id: (json['id'] as num).toInt(),
      dateEntered: json['date_entered'] as String?,
      partnerId: (json['partner_id'] as num?)?.toInt(),
      linkUrl: json['link_url'] as String?,
      icon: json['icon'] as String?,
      subject: json['subject'] as String?,
      text: json['text'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      addToNewUsers: (json['add_to_new_users'] as num?)?.toInt(),
      pictureUrl: json['picture_url'] as String?,
      filter: json['filter'] as String?,
      push: (json['push'] as num?)?.toInt(),
      pushSent: (json['push_sent'] as num?)?.toInt(),
      pushSubject: json['push_subject'] as String?,
      pushText: json['push_text'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MLMApiModelMessageResponseToJson(
        MLMApiModelMessageResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_entered': instance.dateEntered,
      'partner_id': instance.partnerId,
      'link_url': instance.linkUrl,
      'icon': instance.icon,
      'subject': instance.subject,
      'text': instance.text,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'add_to_new_users': instance.addToNewUsers,
      'picture_url': instance.pictureUrl,
      'filter': instance.filter,
      'push': instance.push,
      'push_sent': instance.pushSent,
      'push_subject': instance.pushSubject,
      'push_text': instance.pushText,
      'status': instance.status,
    };
