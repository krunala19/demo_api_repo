import 'package:json_annotation/json_annotation.dart';

part 'model_invoice_item.g.dart';

@JsonSerializable()
class MLMApiModelInvoiceItem {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'invoice_id')
  final int invoiceId;

  @JsonKey(name: 'code')
  final String? code;

  @JsonKey(name: 'ean')
  final String? ean;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'price')
  final String? price;

  @JsonKey(name: 'discount')
  final String? discount;

  @JsonKey(name: 'points')
  final String? points;

  @JsonKey(name: 'quantity')
  final String? quantity;

  @JsonKey(name: 'measure_unit')
  final String? measureUnit;

  @JsonKey(name: 'category')
  final String? category;

  MLMApiModelInvoiceItem({
    required this.id,
    required this.invoiceId,
    required this.code,
    required this.ean,
    required this.name,
    required this.price,
    required this.discount,
    required this.points,
    required this.quantity,
    required this.measureUnit,
    required this.category,
  });

  factory MLMApiModelInvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelInvoiceItemFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelInvoiceItemToJson(this);
}
