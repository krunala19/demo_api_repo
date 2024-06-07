// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_pets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MLMApiModelPets _$MLMApiModelPetsFromJson(Map<String, dynamic> json) =>
    MLMApiModelPets(
      petName: json['pet_name'] as String?,
      petId: (json['pet_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MLMApiModelPetsToJson(MLMApiModelPets instance) =>
    <String, dynamic>{
      'pet_name': instance.petName,
      'pet_id': instance.petId,
    };
