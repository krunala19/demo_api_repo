// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelInvoice _$MLMApiModelInvoiceFromJson(Map<String, dynamic> json) =>
    MLMApiModelInvoice(
      id: (json['id'] as num).toInt(),
      datetime: json['datetime'] as String?,
      isOrder: json['is_order'],
      orderId: json['order_id'],
      invoiceId: json['invoice_id'] as String?,
      invoiceDatetime: json['invoice_datetime'] as String?,
      employeeCode: json['employee_code'] as String?,
      payment: json['payment'] as String?,
      delivery: json['delivery'] as String?,
      pan: json['pan'] as String?,
      currency: json['currency'] as String?,
      loyaltyPoints: json['loyalty_points'] as String?,
      loyaltyPointsUsed: json['loyalty_points_used'] as String?,
      merchantTaxNumber: json['merchant_tax_number'] as String?,
      merchantName: json['merchant_name'] as String?,
      branchName: json['branch_name'] as String?,
      branchAddress: json['branch_address'] as String?,
      branchCity: json['branch_city'] as String?,
      totalAmount: json['total_amount'] as String?,
      totalDiscount: json['total_discount'] as String?,
      cashback: json['cashback'] as String?,
      coupons: json['coupons'] as String?,
      tags: json['tags'] as String?,
      userExternalId: json['user_external_id'],
      items: (json['items'] as List<dynamic>)
          .map(
              (e) => MLMApiModelInvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelInvoiceToJson(MLMApiModelInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime': instance.datetime,
      'is_order': instance.isOrder,
      'order_id': instance.orderId,
      'invoice_id': instance.invoiceId,
      'invoice_datetime': instance.invoiceDatetime,
      'employee_code': instance.employeeCode,
      'payment': instance.payment,
      'delivery': instance.delivery,
      'pan': instance.pan,
      'currency': instance.currency,
      'loyalty_points': instance.loyaltyPoints,
      'loyalty_points_used': instance.loyaltyPointsUsed,
      'merchant_tax_number': instance.merchantTaxNumber,
      'merchant_name': instance.merchantName,
      'branch_name': instance.branchName,
      'branch_address': instance.branchAddress,
      'branch_city': instance.branchCity,
      'total_amount': instance.totalAmount,
      'total_discount': instance.totalDiscount,
      'cashback': instance.cashback,
      'coupons': instance.coupons,
      'tags': instance.tags,
      'user_external_id': instance.userExternalId,
      'items': instance.items,
    };
