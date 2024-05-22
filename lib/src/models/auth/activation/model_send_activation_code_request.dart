import 'package:json_annotation/json_annotation.dart';

part 'model_send_activation_code_request.g.dart';

@JsonSerializable()
class MLMApiModelSendActivationCodeRequest {
  String email;
  String? oib;
  @JsonKey(name: 'device_id')
  String deviceId;
  @JsonKey(name: 'device_pn')
  String devicePn;

  MLMApiModelSendActivationCodeRequest(
      {required this.email,
      this.oib,
      required this.deviceId,
      required this.devicePn});

  factory MLMApiModelSendActivationCodeRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MLMApiModelSendActivationCodeRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MLMApiModelSendActivationCodeRequestToJson(this);
}
