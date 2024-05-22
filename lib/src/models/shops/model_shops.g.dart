// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_shops.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelShop _$MLMApiModelShopFromJson(Map<String, dynamic> json) =>
    MLMApiModelShop(
      id: (json['id'] as num?)?.toInt(),
      dateEntered: json['date_entered'] as String?,
      partnerId: (json['partner_id'] as num?)?.toInt(),
      no: json['no'] as String?,
      name: json['name'] as String?,
      storeType: (json['store_type'] as num?)?.toInt(),
      description: json['description'] as String?,
      nameEng: json['name_eng'] as String?,
      stationId: (json['station_id'] as num?)?.toInt(),
      stationCode: (json['station_code'] as num?)?.toInt(),
      address: json['address'] as String?,
      city: json['city'] as String?,
      county: json['county'] as String?,
      country: json['country'] as String?,
      zipCode: (json['zip_code'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      fax: json['fax'] as String?,
      email: json['email'] as String?,
      web: json['web'] as String?,
      contactPerson: json['contact_person'] as String?,
      geoLat: json['geo_lat'] as String?,
      geoLng: json['geo_lng'] as String?,
      promoText: json['promo_text'] as String?,
      promoTextEng: json['promo_text_eng'] as String?,
      status: (json['status'] as num?)?.toInt(),
      hash: json['hash'] as String?,
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
      items:
          (json['items'] as List<dynamic>?)?.map((e) => e as String).toList(),
      workingHours: (json['workingHours'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      paymentMethods: (json['paymentMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelShopToJson(MLMApiModelShop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_entered': instance.dateEntered,
      'partner_id': instance.partnerId,
      'no': instance.no,
      'name': instance.name,
      'store_type': instance.storeType,
      'description': instance.description,
      'name_eng': instance.nameEng,
      'station_id': instance.stationId,
      'station_code': instance.stationCode,
      'address': instance.address,
      'city': instance.city,
      'county': instance.county,
      'country': instance.country,
      'zip_code': instance.zipCode,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
      'web': instance.web,
      'contact_person': instance.contactPerson,
      'geo_lat': instance.geoLat,
      'geo_lng': instance.geoLng,
      'promo_text': instance.promoText,
      'promo_text_eng': instance.promoTextEng,
      'status': instance.status,
      'hash': instance.hash,
      'pictures': instance.pictures,
      'items': instance.items,
      'workingHours': instance.workingHours,
      'paymentMethods': instance.paymentMethods,
      'services': instance.services,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      id: (json['id'] as num?)?.toInt(),
      shopId: (json['shop_id'] as num?)?.toInt(),
      pictureUrl: json['picture_url'] as String?,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'id': instance.id,
      'shop_id': instance.shopId,
      'picture_url': instance.pictureUrl,
    };
