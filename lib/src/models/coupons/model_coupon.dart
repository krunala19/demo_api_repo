import 'package:json_annotation/json_annotation.dart';

part 'model_coupon.g.dart';

@JsonSerializable()
class MLMApiModelCouponResponse {
  String? status;
  List<MLMobileModelCoupon>? coupons;

  MLMApiModelCouponResponse({this.status, this.coupons});

  factory MLMApiModelCouponResponse.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelCouponResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelCouponResponseToJson(this);
}

@JsonSerializable()
class MLMobileModelCoupon {
  int? id;
  @JsonKey(name: 'series_id')
  int? seriesId;
  @JsonKey(name: 'date_entered')
  String? dateEntered;
  @JsonKey(name: 'date_modified')
  String? dateModified;
  @JsonKey(name: 'date_viewed')
  String? dateViewed;
  String? name;
  String? barcode;
  @JsonKey(name: 'barcode2')
  String? barcode2;
  String? pan;
  @JsonKey(name: 'valid_from')
  String? validFrom;
  @JsonKey(name: 'valid_to')
  String? validTo;
  @JsonKey(name: 'reserved_until')
  String? reservedUntil;
  int? reserved;
  @JsonKey(name: 'user_datetime')
  DateTime? usedDatetime;
  String? subject;
  String? text;
  String? color;
  int? order;
  @JsonKey(name: 'item_array')
  String? itemArray;
  @JsonKey(name: 'item_type')
  String? itemType;
  String? partner;
  @JsonKey(name: 'partner_display')
  String? partnerDisplay;
  @JsonKey(name: 'invoice_id')
  int? invoiceId;
  @JsonKey(name: 'picture_url')
  String? pictureUrl;
  int? discount;
  @JsonKey(name: 'discount_type')
  String? discountType;
  @JsonKey(name: 'link_url')
  String? linkUrl;
  int? number;
  @JsonKey(name: 'multiple_use')
  int? multipleUse;
  @JsonKey(name: 'number_used')
  int? numberUsed;
  @JsonKey(name: 'push_sent')
  int? pushSent;
  @JsonKey(name: 'multiple_use_number')
  int? multipleUseNumber;
  int? status;

  MLMobileModelCoupon();

  factory MLMobileModelCoupon.fromJson(Map<String, dynamic> json) =>
      _$MLMobileModelCouponFromJson(json);

  Map<String, dynamic> toJson() => _$MLMobileModelCouponToJson(this);
}
