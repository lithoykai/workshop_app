import 'package:desafiofast/data/models/collaborator/collaborator_mapper.dart';
import 'package:desafiofast/domain/entities/collaborator_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collaborator_model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class CollaboratorModel extends CollaboratorEntity {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;

  CollaboratorModel({required this.id, required this.name})
      : super(id: id, name: name);

  factory CollaboratorModel.fromJson(Map json) =>
      _$CollaboratorModelFromJson(json);
  Map<String, dynamic> toJson() => _$CollaboratorModelToJson(this);
  factory CollaboratorModel.fromEntity(CollaboratorEntity entity) =>
      $CollaboratorModelFromEntity(entity);
  CollaboratorEntity toEntity() => $CollaboratorEntityFromModel(this);
}
