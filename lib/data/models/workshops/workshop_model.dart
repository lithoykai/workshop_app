import 'package:desafiofast/data/models/workshops/workshop_mapper.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workshop_model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class WorkshopModel extends WorkshopEntity {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'realizationDate')
  DateTime realizationDate;
  @JsonKey(name: 'description')
  String description;

  WorkshopModel(
      {required this.id,
      required this.name,
      required this.realizationDate,
      required this.description})
      : super(
            id: id,
            name: name,
            realizationDate: realizationDate,
            description: description);

  factory WorkshopModel.fromJson(Map json) => _$WorkshopModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkshopModelToJson(this);
  factory WorkshopModel.fromEntity(WorkshopEntity entity) =>
      $WorkshopModelFromEntity(entity);
  WorkshopEntity toEntity() => $WorkshopEntityFromModel(this);
}
