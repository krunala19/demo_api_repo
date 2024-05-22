import 'package:json_annotation/json_annotation.dart';

part "model_polls_request.g.dart";

@JsonSerializable()
class MLMApiModelPollsRequest {
  String pan;
  @JsonKey(name: 'additional_info')
  String additionalInfo;
  @JsonKey(name: 'shop_id')
  int shopId;
  @JsonKey(name: 'poll_id')
  int pollId;
  List<MLMApiModelChoicesRequest> choices;

  MLMApiModelPollsRequest({
    required this.pan,
    required this.additionalInfo,
    required this.shopId,
    required this.pollId,
    required this.choices,
  });

  factory MLMApiModelPollsRequest.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelPollsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelPollsRequestToJson(this);
}

@JsonSerializable()
class MLMApiModelChoicesRequest {
  @JsonKey(name: 'question_id')
  int questionId;
  String text;
  @JsonKey(name: 'choice_id')
  int choiceId;

  MLMApiModelChoicesRequest({
    required this.questionId,
    required this.text,
    required this.choiceId,
  });

  factory MLMApiModelChoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelChoicesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelChoicesRequestToJson(this);
}
