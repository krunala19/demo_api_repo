// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelCouponResponse _$MLMApiModelCouponResponseFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelCouponResponse(
      status: json['status'] as String?,
      coupons: (json['coupons'] as List<dynamic>?)
          ?.map((e) => MLMobileModelCoupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelCouponResponseToJson(
        MLMApiModelCouponResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'coupons': instance.coupons,
    };

MLMobileModelCoupon _$MLMobileModelCouponFromJson(Map<String, dynamic> json) =>
    MLMobileModelCoupon()
      ..id = (json['id'] as num?)?.toInt()
      ..seriesId = (json['series_id'] as num?)?.toInt()
      ..dateEntered = json['date_entered'] as String?
      ..dateModified = json['date_modified'] as String?
      ..dateViewed = json['date_viewed'] as String?
      ..name = json['name'] as String?
      ..barcode = json['barcode'] as String?
      ..barcode2 = json['barcode2'] as String?
      ..pan = json['pan'] as String?
      ..validFrom = json['valid_from'] as String?
      ..validTo = json['valid_to'] as String?
      ..reservedUntil = json['reserved_until'] as String?
      ..reserved = (json['reserved'] as num?)?.toInt()
      ..usedDatetime = json['user_datetime'] == null
          ? null
          : DateTime.parse(json['user_datetime'] as String)
      ..subject = json['subject'] as String?
      ..text = json['text'] as String?
      ..color = json['color'] as String?
      ..order = (json['order'] as num?)?.toInt()
      ..itemArray = json['item_array'] as String?
      ..itemType = json['item_type'] as String?
      ..partner = json['partner'] as String?
      ..partnerDisplay = json['partner_display'] as String?
      ..invoiceId = (json['invoice_id'] as num?)?.toInt()
      ..pictureUrl = json['picture_url'] as String?
      ..discount = (json['discount'] as num?)?.toInt()
      ..discountType = json['discount_type'] as String?
      ..linkUrl = json['link_url'] as String?
      ..number = (json['number'] as num?)?.toInt()
      ..multipleUse = (json['multiple_use'] as num?)?.toInt()
      ..numberUsed = (json['number_used'] as num?)?.toInt()
      ..pushSent = (json['push_sent'] as num?)?.toInt()
      ..multipleUseNumber = (json['multiple_use_number'] as num?)?.toInt()
      ..status = (json['status'] as num?)?.toInt();

Map<String, dynamic> _$MLMobileModelCouponToJson(
        MLMobileModelCoupon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'series_id': instance.seriesId,
      'date_entered': instance.dateEntered,
      'date_modified': instance.dateModified,
      'date_viewed': instance.dateViewed,
      'name': instance.name,
      'barcode': instance.barcode,
      'barcode2': instance.barcode2,
      'pan': instance.pan,
      'valid_from': instance.validFrom,
      'valid_to': instance.validTo,
      'reserved_until': instance.reservedUntil,
      'reserved': instance.reserved,
      'user_datetime': instance.usedDatetime?.toIso8601String(),
      'subject': instance.subject,
      'text': instance.text,
      'color': instance.color,
      'order': instance.order,
      'item_array': instance.itemArray,
      'item_type': instance.itemType,
      'partner': instance.partner,
      'partner_display': instance.partnerDisplay,
      'invoice_id': instance.invoiceId,
      'picture_url': instance.pictureUrl,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'link_url': instance.linkUrl,
      'number': instance.number,
      'multiple_use': instance.multipleUse,
      'number_used': instance.numberUsed,
      'push_sent': instance.pushSent,
      'multiple_use_number': instance.multipleUseNumber,
      'status': instance.status,
    };
