import 'package:json_annotation/json_annotation.dart';

part 'model_appversion.g.dart';

@JsonSerializable()
class MLMApiModelAppVersion {
  @JsonKey(name: 'min_app_version')
  String? minAppVersion;
  @JsonKey(name: 'min_api_version')
  String? minApiVersion;

  MLMApiModelAppVersion({
    this.minAppVersion,
    this.minApiVersion,
  });

  factory MLMApiModelAppVersion.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelAppVersionFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelAppVersionToJson(this);
}
