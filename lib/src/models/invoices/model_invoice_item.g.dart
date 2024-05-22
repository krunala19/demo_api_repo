// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_invoice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelInvoiceItem _$MLMApiModelInvoiceItemFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelInvoiceItem(
      id: (json['id'] as num).toInt(),
      invoiceId: (json['invoice_id'] as num).toInt(),
      code: json['code'] as String?,
      ean: json['ean'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      discount: json['discount'] as String?,
      points: json['points'] as String?,
      quantity: json['quantity'] as String?,
      measureUnit: json['measure_unit'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$MLMApiModelInvoiceItemToJson(
        MLMApiModelInvoiceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_id': instance.invoiceId,
      'code': instance.code,
      'ean': instance.ean,
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'points': instance.points,
      'quantity': instance.quantity,
      'measure_unit': instance.measureUnit,
      'category': instance.category,
    };
