import 'package:json_annotation/json_annotation.dart';

part 'model_user_response.g.dart';

@JsonSerializable()
class MLMApiModelUser {
  String? id;
  @JsonKey(name: 'date_entered')
  DateTime? dateEntered;
  @JsonKey(name: 'date_modified')
  DateTime? dateModified;
  String? pan;
  int? pin;
  String? email;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'middle_name')
  String? middleName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'cardholder_name')
  String? cardholderName;
  DateTime? birthday;
  String? sex;
  String? address;
  @JsonKey(name: 'house_number')
  String? houseNumber;
  String city;
  @JsonKey(name: 'zip_code')
  int? zipCode;
  String? oib;
  @JsonKey(name: 'idcard_number')
  String? idcardNumber;
  DateTime? expires;
  @JsonKey(name: 'mobile_phone')
  String? mobilePhone;
  @JsonKey(name: 'fix_phone')
  String? fixPhone;
  @JsonKey(name: 'money_spent')
  String? moneySpent;
  @JsonKey(name: 'total_discount')
  String? totalDiscount;
  @JsonKey(name: 'total_transactions')
  int? totalTransactions;
  @JsonKey(name: 'fuel_liter_in_this_month')
  String? fuelLiterInThisMonth;
  @JsonKey(name: 'family_members_count')
  int? familyMembersCount;
  @JsonKey(name: 'children_count')
  int? childrenCount;
  @JsonKey(name: 'qualification')
  String? qualification;
  @JsonKey(name: 'ext_suglasnost')
  String? extSuglasnost;
  @JsonKey(name: 'ext_suglasnost2')
  int? extSuglasnost2;
  int? registered;
  @JsonKey(name: 'registration_number')
  String? registrationNumber;
  int? company;
  @JsonKey(name: 'company_name')
  String? companyName;
  String? hash;
  @JsonKey(name: 'favorite_shop')
  int? favoriteShop;
  @JsonKey(name: 'loyalty_status')
  String? loyaltyStatus;
  @JsonKey(name: 'loyalty_status_old')
  String? loyaltyStatusOld;
  @JsonKey(name: 'cust_disc_group')
  String? custDiscGroup;
  @JsonKey(name: 'loyalty_status_internal')
  String? loyaltyStatusInternal;
  @JsonKey(name: 'was_user')
  String? wasUser;
  @JsonKey(name: 'date_smartphone')
  DateTime? dateSmartphone;
  @JsonKey(name: 'parent_id')
  String? parentId;
  @JsonKey(name: 'external_id')
  String? externalId;
  @JsonKey(name: 'barcode')
  String? barcode;
  @JsonKey(name: 'unread_messages')
  int? unreadMessages;
  @JsonKey(name: 'unread_coupons')
  int? unreadCoupons;
  @JsonKey(name: 'unread_actions_stamps')
  int? unreadActionsStamps;
  @JsonKey(name: 'unread_actions_rewards')
  int? unreadActionsRewards;
  @JsonKey(name: 'unread_actions_points')
  int? unreadActionsPoints;
  @JsonKey(name: 'unread_offers')
  int? unreadOffers;
  String? bodovi;
  int? marketing;
  @JsonKey(name: 'notification_phone')
  int? notificationPhone;
  @JsonKey(name: 'notification_email')
  int? notificationEmail;
  @JsonKey(name: 'notification_post')
  int? notificationPost;
  @JsonKey(name: 'notification_sms')
  int? notificationSms;
  @JsonKey(name: 'notification_message')
  int? notificationMessage;
  @JsonKey(name: 'send_plastic_card')
  int? sendPlasticCard;
  @JsonKey(name: 'device_id')
  String? deviceId;
  @JsonKey(name: 'device_pn')
  String? devicePn;
  @JsonKey(name: 'pension')
  String? pension;
  @JsonKey(name: 'family_status')
  String? familyStatus;
  @JsonKey(name: 'working_status')
  String? workingStatus;

  @JsonKey(name: 'pets')
  String? pets;
  @JsonKey(name: 'online_shopping')
  String? onlineShopping;
  int? status;
  @JsonKey(name: 'child_data')
  List<MLMApiModelUser>? childData;


  MLMApiModelUser({
    this.id,
    this.dateEntered,
    this.dateModified,
    this.pan,
    this.pin,
    this.email,
    this.firstName,
    this.middleName,
    this.lastName,
    this.cardholderName,
    this.birthday,
    this.sex,
    this.address,
    this.houseNumber,
    required this.city,
    this.zipCode,
    this.oib,
    this.idcardNumber,
    this.expires,
    this.mobilePhone,
    this.fixPhone,
    this.moneySpent,
    this.totalDiscount,
    this.totalTransactions,
    this.fuelLiterInThisMonth,
    this.familyMembersCount,
    this.childrenCount,
    this.qualification,
    this.extSuglasnost,
    this.extSuglasnost2,
    this.registered,
    this.registrationNumber,
    this.company,
    this.companyName,
    this.hash,
    this.favoriteShop,
    this.loyaltyStatus,
    this.loyaltyStatusOld,
    this.custDiscGroup,
    this.loyaltyStatusInternal,
    this.wasUser,
    this.dateSmartphone,
    this.parentId,
    this.externalId,
    this.barcode,
    this.unreadMessages,
    this.unreadCoupons,
    this.unreadActionsStamps,
    this.unreadActionsRewards,
    this.unreadActionsPoints,
    this.unreadOffers,
    this.bodovi,
    this.marketing,
    this.notificationPhone,
    this.notificationEmail,
    this.notificationPost,
    this.notificationSms,
    this.notificationMessage,
    this.sendPlasticCard,
    this.deviceId,
    this.devicePn,
    this.pension,
    this.familyStatus,
    this.workingStatus,
    this.pets,
    this.onlineShopping,
    this.status,
    this.childData,
  });

  factory MLMApiModelUser.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelUserFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelUserToJson(this);
}
