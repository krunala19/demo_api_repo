// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_invoices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelInvoices _$MLMApiModelInvoicesFromJson(Map<String, dynamic> json) =>
    MLMApiModelInvoices(
      invoices: (json['invoices'] as List<dynamic>?)
          ?.map((e) => MLMApiModelInvoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: json['transactions'],
      cashSpent: (json['cash_spent'] as num?)?.toDouble(),
      cashbackEarned: (json['cashback_earned'] as num?)?.toDouble(),
      cashbackSpent: (json['cashback_spent'] as num?)?.toDouble(),
      cashbackUnused: (json['cashback_unused'] as num?)?.toDouble(),
      discounts: (json['discounts'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MLMApiModelInvoicesToJson(
        MLMApiModelInvoices instance) =>
    <String, dynamic>{
      'invoices': instance.invoices,
      'transactions': instance.transactions,
      'cash_spent': instance.cashSpent,
      'cashback_earned': instance.cashbackEarned,
      'cashback_spent': instance.cashbackSpent,
      'cashback_unused': instance.cashbackUnused,
      'discounts': instance.discounts,
    };
