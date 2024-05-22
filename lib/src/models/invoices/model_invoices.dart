import 'package:json_annotation/json_annotation.dart';
import 'package:modus_loyalty_mobile_api/src/models/invoices/model_invoice.dart';

part 'model_invoices.g.dart';

@JsonSerializable()
class MLMApiModelInvoices {
  List<MLMApiModelInvoice>? invoices;
  dynamic? transactions;
  @JsonKey(name: 'cash_spent')
  double? cashSpent;
  @JsonKey(name: 'cashback_earned')
  double? cashbackEarned;
  @JsonKey(name: 'cashback_spent')
  double? cashbackSpent;
  @JsonKey(name: 'cashback_unused')
  double? cashbackUnused;
  double? discounts;

  MLMApiModelInvoices({
    this.invoices,
    this.transactions,
    this.cashSpent,
    this.cashbackEarned,
    this.cashbackSpent,
    this.cashbackUnused,
    this.discounts,
  });

  factory MLMApiModelInvoices.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelInvoicesFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelInvoicesToJson(this);
}
