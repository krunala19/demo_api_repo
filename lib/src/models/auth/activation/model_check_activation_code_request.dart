import 'package:json_annotation/json_annotation.dart';

part 'model_check_activation_code_request.g.dart';

@JsonSerializable()
class MLMApiModelCheckActivationCodeRequest {
  String email;
  @JsonKey(name: 'activation_code')
  String activationCode;

  MLMApiModelCheckActivationCodeRequest(
      {required this.email, required this.activationCode});

  factory MLMApiModelCheckActivationCodeRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MLMApiModelCheckActivationCodeRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MLMApiModelCheckActivationCodeRequestToJson(this);
}
