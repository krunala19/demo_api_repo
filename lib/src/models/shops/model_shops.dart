import 'package:json_annotation/json_annotation.dart';

part 'model_shops.g.dart';

@JsonSerializable()
class MLMApiModelShop {
  final int? id;

  @JsonKey(name: 'date_entered')
  final String? dateEntered;

  @JsonKey(name: 'partner_id')
  final int? partnerId;

  final String? no;
  final String? name;

  @JsonKey(name: 'store_type')
  final int? storeType;

  final String? description;

  @JsonKey(name: 'name_eng')
  final String? nameEng;

  @JsonKey(name: 'station_id')
  final int? stationId;

  @JsonKey(name: 'station_code')
  final int? stationCode;

  final String? address;
  final String? city;
  final String? county;
  final String? country;

  @JsonKey(name: 'zip_code')
  final int? zipCode;

  final String? phone;
  final String? fax;
  final String? email;
  final String? web;

  @JsonKey(name: 'contact_person')
  final String? contactPerson;

  @JsonKey(name: 'geo_lat')
  final String? geoLat;

  @JsonKey(name: 'geo_lng')
  final String? geoLng;

  @JsonKey(name: 'promo_text')
  final String? promoText;

  @JsonKey(name: 'promo_text_eng')
  final String? promoTextEng;

  final int? status;
  final String? hash;

  final List<Picture>? pictures;
  final List<String>? items;
  final List<String>? workingHours;
  final List<String>? paymentMethods;
  final List<String>? services;

  MLMApiModelShop({
    this.id,
    this.dateEntered,
    this.partnerId,
    this.no,
    this.name,
    this.storeType,
    this.description,
    this.nameEng,
    this.stationId,
    this.stationCode,
    this.address,
    this.city,
    this.county,
    this.country,
    this.zipCode,
    this.phone,
    this.fax,
    this.email,
    this.web,
    this.contactPerson,
    this.geoLat,
    this.geoLng,
    this.promoText,
    this.promoTextEng,
    this.status,
    this.hash,
    this.pictures,
    this.items,
    this.workingHours,
    this.paymentMethods,
    this.services,
  });

  factory MLMApiModelShop.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelShopFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelShopToJson(this);
}

@JsonSerializable()
class Picture {
  int? id;
  @JsonKey(name: 'shop_id')
  int? shopId;
  @JsonKey(name: 'picture_url')
  String? pictureUrl;

  Picture({
    this.id,
    this.shopId,
    this.pictureUrl,
  });

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
  Map<String, dynamic> toJson() => _$PictureToJson(this);
}
