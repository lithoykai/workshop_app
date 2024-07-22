import 'package:desafiofast/domain/entities/collaborator_entity.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';

class AtaEntity {
  int id;
  WorkshopEntity workshop;
  List<CollaboratorEntity> collaborators;

  AtaEntity(
      {required this.id, required this.workshop, required this.collaborators});
}
