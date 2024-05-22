import 'package:json_annotation/json_annotation.dart';

part 'model_forgot_password_request.g.dart';

@JsonSerializable()
class MLMApiModelForgotPasswordRequest {
  String email;
  @JsonKey(name: 'device_id')
  String deviceId;
  @JsonKey(name: 'device_pn')
  String devicePn;

  MLMApiModelForgotPasswordRequest(
      {required this.email, required this.deviceId, required this.devicePn});

  factory MLMApiModelForgotPasswordRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MLMApiModelForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MLMApiModelForgotPasswordRequestToJson(this);
}
