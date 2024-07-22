import 'package:desafiofast/data/models/collaborator/collaborator_model.dart';
import 'package:desafiofast/data/models/workshops/workshop_model.dart';
import 'package:desafiofast/domain/entities/ata_entity.dart';
import 'package:desafiofast/domain/entities/collaborator_entity.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';

class AtaModel extends AtaEntity {
  int id;

  WorkshopEntity workshop;

  List<CollaboratorEntity> collaborators;

  AtaModel(
      {required this.id, required this.workshop, required this.collaborators})
      : super(collaborators: collaborators, id: id, workshop: workshop);

  AtaModel fromJson(Map<String, dynamic> json) {
    return AtaModel(
      id: json['id'],
      workshop: WorkshopModel.fromJson(json['workshop']).toEntity(),
      collaborators:
          List.from(CollaboratorModel.fromJson(json[collaborators].toEntity())),
    );
  }
}
