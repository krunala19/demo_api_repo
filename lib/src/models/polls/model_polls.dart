import 'package:json_annotation/json_annotation.dart';

part 'model_polls.g.dart';

@JsonSerializable()
class MLMApiModelPolls {
  int id;
  @JsonKey(name: 'date_entered')
  String dateEntered;
  String name;
  String type;
  @JsonKey(name: 'start_date')
  String startDate;
  @JsonKey(name: 'end_date')
  String endDate;
  @JsonKey(name: 'one_time')
  int oneTime;
  int points;
  int status;
  List<MLMApiModelQuestion> questions;

  MLMApiModelPolls({
    required this.id,
    required this.dateEntered,
    required this.name,
    required this.type,
    required this.startDate,
    required this.endDate,
    required this.oneTime,
    required this.points,
    required this.status,
    required this.questions,
  });

  factory MLMApiModelPolls.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelPollsFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelPollsToJson(this);
}

@JsonSerializable()
class MLMApiModelQuestion {
  int id;
  @JsonKey(name: 'poll_id')
  int pollId;
  @JsonKey(name: 'date_entered')
  String dateEntered;
  String text;
  String type;
  @JsonKey(name: 'sorting_number')
  int sortingNumber;
  int status;
  List<MLMApiModelChoice> choices;

  MLMApiModelQuestion({
    required this.id,
    required this.pollId,
    required this.dateEntered,
    required this.text,
    required this.type,
    required this.sortingNumber,
    required this.status,
    required this.choices,
  });

  factory MLMApiModelQuestion.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelQuestionToJson(this);
}

@JsonSerializable()
class MLMApiModelChoice {
  int id;
  @JsonKey(name: 'question_id')
  int questionId;
  @JsonKey(name: 'date_entered')
  String dateEntered;
  String text;
  int status;
  @JsonKey(name: 'right_answer')
  int rightAnswer;

  MLMApiModelChoice({
    required this.id,
    required this.questionId,
    required this.dateEntered,
    required this.text,
    required this.status,
    required this.rightAnswer,
  });

  factory MLMApiModelChoice.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelChoiceFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelChoiceToJson(this);
}
