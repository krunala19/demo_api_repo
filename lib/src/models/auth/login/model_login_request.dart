import 'package:json_annotation/json_annotation.dart';

part 'model_login_request.g.dart';

@JsonSerializable()
class MLMApiModelLoginRequest {
  String pan;
  int pin;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  int marketing;
  @JsonKey(name: 'device_id')
  String deviceId;
  @JsonKey(name: 'device_pn')
  String devicePn;

  MLMApiModelLoginRequest({
    required this.pan,
    required this.pin,
    this.firstName,
    this.lastName,
    required this.marketing,
    required this.deviceId,
    required this.devicePn,
  });

  factory MLMApiModelLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelLoginRequestToJson(this);
}
