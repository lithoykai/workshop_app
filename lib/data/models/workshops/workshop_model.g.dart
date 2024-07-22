// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkshopModel _$WorkshopModelFromJson(Map json) => WorkshopModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      realizationDate: DateTime.parse(json['realizationDate'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$WorkshopModelToJson(WorkshopModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'realizationDate': instance.realizationDate.toIso8601String(),
      'description': instance.description,
    };
