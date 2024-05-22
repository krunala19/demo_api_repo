

import 'package:json_annotation/json_annotation.dart';

part 'model_pets.g.dart';

@JsonSerializable()
class MLMApiModelPets {
  @JsonKey(name: 'pet_name')
  String? petName;
  @JsonKey(name: 'pet_id')
  int? petId;

  MLMApiModelPets({
    this.petName,
    this.petId,
  });

  factory MLMApiModelPets.fromJson(Map<String, dynamic> json) =>
      _$MLMApiModelPetsFromJson(json);

  Map<String, dynamic> toJson() => _$MLMApiModelPetsToJson(this);

}