import 'package:json_annotation/json_annotation.dart';

part 'model_actions.g.dart';

@JsonSerializable()
class MLMApiModelActionsResponse {
  final List<MLMobileModelAction>? personal;
  final List<MLMobileModelAction>? all;

  MLMApiModelActionsResponse({this.personal, this.all});

  factory MLMApiModelActionsResponse.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelActionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelActionsResponseToJson(this);
}

@JsonSerializable()
class MLMobileModelAction {
  final int? id;

  @JsonKey(name: 'date_entered')
  final String? dateEntered;

  final String? name;

  @JsonKey(name: 'name_short')
  final String? nameShort;

  @JsonKey(name: 'start_date')
  final String? startDate;

  @JsonKey(name: 'end_date')
  final String? endDate;

  final String? description;

  @JsonKey(name: 'description_short')
  final String? descriptionShort;

  @JsonKey(name: 'picture_small')
  final String? pictureSmall;

  @JsonKey(name: 'picture_big')
  final String? pictureBig;

  @JsonKey(name: 'link_url')
  final String? linkUrl;

  final String? type;

  @JsonKey(name: 'reward_price')
  final int? rewardPrice;

  @JsonKey(name: 'stamping_number')
  final int? stampingNumber;

  @JsonKey(name: 'reward_treshold')
  final int? rewardTreshold;

  @JsonKey(name: 'reward_treshold_type')
  final String? rewardTresholdType;

  @JsonKey(name: 'reward_quantity')
  final int? rewardQuantity;

  final int? status;
  final int? stamps;

  // Add other properties as needed

  MLMobileModelAction({
    this.id,
    this.dateEntered,
    this.name,
    this.nameShort,
    this.startDate,
    this.endDate,
    this.description,
    this.descriptionShort,
    this.pictureSmall,
    this.pictureBig,
    this.linkUrl,
    this.type,
    this.rewardPrice,
    this.stampingNumber,
    this.rewardTreshold,
    this.rewardTresholdType,
    this.rewardQuantity,
    this.status,
    this.stamps,
    // Add other parameters as needed
  });

  factory MLMobileModelAction.fromJson(Map<String, dynamic> json) =>
      _$MLMobileModelActionFromJson(json);

  Map<String, dynamic> toJson() => _$MLMobileModelActionToJson(this);
}
