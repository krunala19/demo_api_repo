import 'package:json_annotation/json_annotation.dart';

part 'model_create_child_user_request.g.dart';

@JsonSerializable()
class MLMApiModelCreateChildUserRequest {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'pin')
  int pin;

  @JsonKey(name: 'data')
  Object? data;

  MLMApiModelCreateChildUserRequest({
    required this.id,
    required this.pin,
    required this.data,
    required this.email,
  });

  factory MLMApiModelCreateChildUserRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MLMApiModelCreateChildUserRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MLMApiModelCreateChildUserRequestToJson(this);
}
