// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_polls_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelPollsRequest _$MLMApiModelPollsRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelPollsRequest(
      pan: json['pan'] as String,
      additionalInfo: json['additional_info'] as String,
      shopId: (json['shop_id'] as num).toInt(),
      pollId: (json['poll_id'] as num).toInt(),
      choices: (json['choices'] as List<dynamic>)
          .map((e) =>
              MLMApiModelChoicesRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelPollsRequestToJson(
        MLMApiModelPollsRequest instance) =>
    <String, dynamic>{
      'pan': instance.pan,
      'additional_info': instance.additionalInfo,
      'shop_id': instance.shopId,
      'poll_id': instance.pollId,
      'choices': instance.choices,
    };

MLMApiModelChoicesRequest _$MLMApiModelChoicesRequestFromJson(
        Map<String, dynamic> json) =>
    MLMApiModelChoicesRequest(
      questionId: (json['question_id'] as num).toInt(),
      text: json['text'] as String,
      choiceId: (json['choice_id'] as num).toInt(),
    );

Map<String, dynamic> _$MLMApiModelChoicesRequestToJson(
        MLMApiModelChoicesRequest instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'text': instance.text,
      'choice_id': instance.choiceId,
    };
