import 'package:json_annotation/json_annotation.dart';
import 'package:modus_loyalty_mobile_api/src/models/auth/user/model_pets.dart';

part 'model_create_user_request.g.dart';

@JsonSerializable()
class MLMApiModelCreateUserRequest {
  String birthday;

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  @JsonKey(name: 'mobile_phone')
  String? mobilePhone;

  String? sex;
  String email;
  String address;
  String? oib;

  @JsonKey(name: 'company')
  int? company;
  String? industry;

  @JsonKey(name: 'company_name')
  String? companyName;

  @JsonKey(name: 'notification_email')
  String? notificationEmail;

  @JsonKey(name: 'notification_message')
  String? notificationMessage;

  @JsonKey(name: 'notification_sms')
  String? notificationSms;

  @JsonKey(name: 'notification_phone')
  String? notificationPhone;

  @JsonKey(name: 'notification_post')
  String? notificationPost;

  @JsonKey(name: 'send_plastic_card')
  String? sendPlasticCard;

  @JsonKey(name: 'device_id')
  String deviceId;

  @JsonKey(name: 'device_pn')
  String devicePn;

  String? city;

  @JsonKey(name: 'zip_code')
  String? zipCode;

  @JsonKey(name: 'fix_phone')
  String? fixPhone;

  String marketing;

  @JsonKey(name: 'activation_code')
  String activationCode;

  @JsonKey(name: 'activation_code_for_loyalty_status')
  String? activationCodeForLoyaltyStatus;

  @JsonKey(name: 'pets')
  List<MLMApiModelPets>? pets;

  MLMApiModelCreateUserRequest({
    required this.birthday,
    required this.firstName,
    required this.lastName,
    this.mobilePhone,
    this.sex,
    required this.email,
    required this.address,
    this.oib,
    this.company,
    this.companyName,
    this.industry,
    this.notificationEmail,
    this.notificationMessage,
    this.notificationSms,
    this.notificationPhone,
    this.notificationPost,
    this.sendPlasticCard,
    required this.deviceId,
    required this.devicePn,
    required this.city,
    this.zipCode,
    this.fixPhone,
    required this.marketing,
    required this.activationCode,
    this.activationCodeForLoyaltyStatus,
    this.pets,
  });

  factory MLMApiModelCreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelCreateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelCreateUserRequestToJson(this);
}
