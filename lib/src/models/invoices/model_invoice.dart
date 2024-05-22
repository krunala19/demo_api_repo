import 'package:json_annotation/json_annotation.dart';
import 'package:modus_loyalty_mobile_api/src/models/invoices/model_invoice_item.dart';

part 'model_invoice.g.dart';

@JsonSerializable()
class MLMApiModelInvoice {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'datetime')
  final String? datetime;

  @JsonKey(name: 'is_order')
  final dynamic isOrder;

  @JsonKey(name: 'order_id')
  final dynamic orderId;

  @JsonKey(name: 'invoice_id')
  final String? invoiceId;

  @JsonKey(name: 'invoice_datetime')
  final String? invoiceDatetime;

  @JsonKey(name: 'employee_code')
  final String? employeeCode;

  @JsonKey(name: 'payment')
  final String? payment;

  @JsonKey(name: 'delivery')
  final String? delivery;

  @JsonKey(name: 'pan')
  final String? pan;

  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'loyalty_points')
  final String? loyaltyPoints;

  @JsonKey(name: 'loyalty_points_used')
  final String? loyaltyPointsUsed;

  @JsonKey(name: 'merchant_tax_number')
  final String? merchantTaxNumber;

  @JsonKey(name: 'merchant_name')
  final String? merchantName;

  @JsonKey(name: 'branch_name')
  final String? branchName;

  @JsonKey(name: 'branch_address')
  final String? branchAddress;

  @JsonKey(name: 'branch_city')
  final String? branchCity;

  @JsonKey(name: 'total_amount')
  final String? totalAmount;

  @JsonKey(name: 'total_discount')
  final String? totalDiscount;

  @JsonKey(name: 'cashback')
  final String? cashback;

  @JsonKey(name: 'coupons')
  final String? coupons;

  @JsonKey(name: 'tags')
  final String? tags;

  @JsonKey(name: 'user_external_id')
  final dynamic userExternalId;

  @JsonKey(name: 'items')
  final List<MLMApiModelInvoiceItem> items;

  MLMApiModelInvoice({
    required this.id,
    required this.datetime,
    required this.isOrder,
    required this.orderId,
    required this.invoiceId,
    required this.invoiceDatetime,
    required this.employeeCode,
    required this.payment,
    required this.delivery,
    required this.pan,
    required this.currency,
    required this.loyaltyPoints,
    required this.loyaltyPointsUsed,
    required this.merchantTaxNumber,
    required this.merchantName,
    required this.branchName,
    required this.branchAddress,
    required this.branchCity,
    required this.totalAmount,
    required this.totalDiscount,
    required this.cashback,
    required this.coupons,
    required this.tags,
    required this.userExternalId,
    required this.items,
  });

  factory MLMApiModelInvoice.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelInvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelInvoiceToJson(this);
}
