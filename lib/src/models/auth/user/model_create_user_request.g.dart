// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelCreateUserRequest _$MLMApiModelCreateUserRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelCreateUserRequest(
      birthday: json['birthday'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      mobilePhone: json['mobile_phone'] as String?,
      sex: json['sex'] as String?,
      email: json['email'] as String,
      address: json['address'] as String,
      oib: json['oib'] as String?,
      company: (json['company'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
      industry: json['industry'] as String?,
      notificationEmail: json['notification_email'] as String?,
      notificationMessage: json['notification_message'] as String?,
      notificationSms: json['notification_sms'] as String?,
      notificationPhone: json['notification_phone'] as String?,
      notificationPost: json['notification_post'] as String?,
      sendPlasticCard: json['send_plastic_card'] as String?,
      deviceId: json['device_id'] as String,
      devicePn: json['device_pn'] as String,
      city: json['city'] as String?,
      zipCode: json['zip_code'] as String?,
      fixPhone: json['fix_phone'] as String?,
      marketing: json['marketing'] as String,
      activationCode: json['activation_code'] as String,
      activationCodeForLoyaltyStatus:
          json['activation_code_for_loyalty_status'] as String?,
      pets: (json['pets'] as List<dynamic>?)
          ?.map((e) => MLMApiModelPets.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelCreateUserRequestToJson(
        MLMApiModelCreateUserRequest instance) =>
    <String, dynamic>{
      'birthday': instance.birthday,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_phone': instance.mobilePhone,
      'sex': instance.sex,
      'email': instance.email,
      'address': instance.address,
      'oib': instance.oib,
      'company': instance.company,
      'industry': instance.industry,
      'company_name': instance.companyName,
      'notification_email': instance.notificationEmail,
      'notification_message': instance.notificationMessage,
      'notification_sms': instance.notificationSms,
      'notification_phone': instance.notificationPhone,
      'notification_post': instance.notificationPost,
      'send_plastic_card': instance.sendPlasticCard,
      'device_id': instance.deviceId,
      'device_pn': instance.devicePn,
      'city': instance.city,
      'zip_code': instance.zipCode,
      'fix_phone': instance.fixPhone,
      'marketing': instance.marketing,
      'activation_code': instance.activationCode,
      'activation_code_for_loyalty_status':
          instance.activationCodeForLoyaltyStatus,
      'pets': instance.pets,
    };
