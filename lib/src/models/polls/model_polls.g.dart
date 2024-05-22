// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_polls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelPolls _$MLMApiModelPollsFromJson(Map<String, dynamic> json) =>
    MLMApiModelPolls(
      id: (json['id'] as num).toInt(),
      dateEntered: json['date_entered'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      oneTime: (json['one_time'] as num).toInt(),
      points: (json['points'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => MLMApiModelQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelPollsToJson(MLMApiModelPolls instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_entered': instance.dateEntered,
      'name': instance.name,
      'type': instance.type,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'one_time': instance.oneTime,
      'points': instance.points,
      'status': instance.status,
      'questions': instance.questions,
    };

MLMApiModelQuestion _$MLMApiModelQuestionFromJson(Map<String, dynamic> json) =>
    MLMApiModelQuestion(
      id: (json['id'] as num).toInt(),
      pollId: (json['poll_id'] as num).toInt(),
      dateEntered: json['date_entered'] as String,
      text: json['text'] as String,
      type: json['type'] as String,
      sortingNumber: (json['sorting_number'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => MLMApiModelChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MLMApiModelQuestionToJson(
        MLMApiModelQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poll_id': instance.pollId,
      'date_entered': instance.dateEntered,
      'text': instance.text,
      'type': instance.type,
      'sorting_number': instance.sortingNumber,
      'status': instance.status,
      'choices': instance.choices,
    };

MLMApiModelChoice _$MLMApiModelChoiceFromJson(Map<String, dynamic> json) =>
    MLMApiModelChoice(
      id: (json['id'] as num).toInt(),
      questionId: (json['question_id'] as num).toInt(),
      dateEntered: json['date_entered'] as String,
      text: json['text'] as String,
      status: (json['status'] as num).toInt(),
      rightAnswer: (json['right_answer'] as num).toInt(),
    );

Map<String, dynamic> _$MLMApiModelChoiceToJson(MLMApiModelChoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_id': instance.questionId,
      'date_entered': instance.dateEntered,
      'text': instance.text,
      'status': instance.status,
      'right_answer': instance.rightAnswer,
    };
