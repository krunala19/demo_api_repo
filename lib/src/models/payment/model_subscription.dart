import 'package:json_annotation/json_annotation.dart';

part 'model_subscription.g.dart';

@JsonSerializable()
class MLModelApiSubscription {
  int? id;
  String? name;
  @JsonKey(name: 'total_price')
  String? totalPrice;

  @JsonKey(name: 'expiration_period')
  String? expirationPeriod;

  String? description;

  @JsonKey(name: 'image_url')
  String? imageUrl;

  int? status;

  @JsonKey(name: 'date_entered')
  DateTime? dateEntered;

  @JsonKey(name: 'date_modified')
  DateTime? dateModified;

  @JsonKey(name: 'button_html')
  String? buttonHtml;

  MLModelApiSubscription({
    this.id,
    this.name,
    this.totalPrice,
    this.expirationPeriod,
    this.description,
    this.imageUrl,
    this.status,
    this.dateEntered,
    this.dateModified,
    this.buttonHtml,
  });

  factory MLModelApiSubscription.fromJson(Map<String, dynamic> json) =>
      _$MLModelApiSubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$MLModelApiSubscriptionToJson(this);
}

@JsonSerializable()
class MLModelApiSubscriptionsResponse {
  String? status;
  List<MLModelApiSubscription>? data;

  MLModelApiSubscriptionsResponse({
    required this.status,
    required this.data,
  });

  factory MLModelApiSubscriptionsResponse.fromJson(Map<String, dynamic> json) =>
      _$MLModelApiSubscriptionsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MLModelApiSubscriptionsResponseToJson(this);
}
