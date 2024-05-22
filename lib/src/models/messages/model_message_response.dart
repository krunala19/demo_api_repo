import 'package:json_annotation/json_annotation.dart';

part 'model_message_response.g.dart';

@JsonSerializable()
class MLMApiModelMessageResponse {
  int id;
  @JsonKey(name: 'date_entered')
  String? dateEntered;
  @JsonKey(name: 'partner_id')
  int? partnerId;
  @JsonKey(name: 'link_url')
  String? linkUrl;
  String? icon;
  String? subject;
  String? text;
  @JsonKey(name: 'start_date')
  String? startDate;
  @JsonKey(name: 'end_date')
  String? endDate;
  @JsonKey(name: 'add_to_new_users')
  int? addToNewUsers;
  @JsonKey(name: 'picture_url')
  String? pictureUrl;
  String? filter;
  int? push;
  @JsonKey(name: 'push_sent')
  int? pushSent;
  @JsonKey(name: 'push_subject')
  String? pushSubject;
  @JsonKey(name: 'push_text')
  String? pushText;
  int? status;

  MLMApiModelMessageResponse({
    required this.id,
    this.dateEntered,
    this.partnerId,
    this.linkUrl,
    this.icon,
    this.subject,
    this.text,
    this.startDate,
    this.endDate,
    this.addToNewUsers,
    this.pictureUrl,
    this.filter,
    this.push,
    this.pushSent,
    this.pushSubject,
    this.pushText,
    this.status,
  });

  factory MLMApiModelMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelMessageResponseToJson(this);
}
