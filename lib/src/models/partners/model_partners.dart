import 'package:json_annotation/json_annotation.dart';

part 'model_partners.g.dart';

@JsonSerializable()
class MLMApiModelPartner {
  final int? id;

  @JsonKey(name: 'date_entered')
  final String? dateEntered;

  @JsonKey(name: 'category_id')
  final int? categoryId;

  final String? type;
  final dynamic batch;
  final dynamic oib;
  final String? name;
  final dynamic email;
  final String? address;
  final String? city;
  final String? country;
  final String? phone;
  final String? web;
  final dynamic workingHours;
  final dynamic instagram;
  final dynamic facebook;
  final dynamic twitter;
  final dynamic linkedin;
  final dynamic youtube;
  final dynamic cashbackCash;

  @JsonKey(name: 'carshback_cash_text')
  final String? cashbackCashText;

  final dynamic cashbackCard;
  final int? cashbackBasic;
  final int? cashbackPremium;

  @JsonKey(name: 'benefit_text')
  final String? benefitText;

  @JsonKey(name: 'short_text')
  final String? shortText;

  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  final dynamic pointsPeriod;

  @JsonKey(name: 'geo_lat')
  final String? geoLat;

  @JsonKey(name: 'geo_lng')
  final String? geoLng;

  @JsonKey(name: 'loyalty_status')
  final String? loyaltyStatus;

  final int? status;

  @JsonKey(name: 'valid_from')
  final String? validFrom;

  @JsonKey(name: 'valid_to')
  final String? validTo;

  MLMApiModelPartner({
    this.id,
    this.dateEntered,
    this.categoryId,
    this.type,
    this.batch,
    this.oib,
    this.name,
    this.email,
    this.address,
    this.city,
    this.country,
    this.phone,
    this.web,
    this.workingHours,
    this.instagram,
    this.facebook,
    this.twitter,
    this.linkedin,
    this.youtube,
    this.cashbackCash,
    this.cashbackCashText,
    this.cashbackCard,
    this.cashbackBasic,
    this.cashbackPremium,
    this.benefitText,
    this.shortText,
    this.logoUrl,
    this.pointsPeriod,
    this.geoLat,
    this.geoLng,
    this.loyaltyStatus,
    this.status,
    this.validFrom,
    this.validTo,
  });

  factory MLMApiModelPartner.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelPartnerFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelPartnerToJson(this);
}
