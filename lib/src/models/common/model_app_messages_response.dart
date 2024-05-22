import 'package:json_annotation/json_annotation.dart';

part 'model_app_messages_response.g.dart';

/// id, date_entered, name, text, lang, image_url
///
@JsonSerializable()
class MLMApiModelAppMessage {
  int id;
  @JsonKey(name: 'date_entered')
  String dateEntered;
  String? name;
  String? text;
  String? lang;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  String? url;
  String? type;
  int? status;

  MLMApiModelAppMessage({
    required this.id,
    required this.dateEntered,
    this.name,
    this.text,
    this.lang,
    this.imageUrl,
    this.url,
    this.type,
    this.status,
  });

  factory MLMApiModelAppMessage.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelAppMessageFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelAppMessageToJson(this);
}
