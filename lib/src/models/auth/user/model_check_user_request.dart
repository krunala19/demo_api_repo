import 'package:json_annotation/json_annotation.dart';

part 'model_check_user_request.g.dart';

@JsonSerializable()
class MLMApiModelCheckUserRequest {
  String pan;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String birthday;

  MLMApiModelCheckUserRequest(
      {required this.pan,
      required this.firstName,
      required this.lastName,
      required this.birthday});

  factory MLMApiModelCheckUserRequest.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelCheckUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelCheckUserRequestToJson(this);
}
