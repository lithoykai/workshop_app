import 'package:desafiofast/data/models/collaborator/collaborator_model.dart';
import 'package:desafiofast/domain/entities/collaborator_entity.dart';

CollaboratorModel $CollaboratorModelFromEntity(CollaboratorEntity entity) {
  return CollaboratorModel(
    name: entity.name,
    id: entity.id,
  );
}

CollaboratorEntity $CollaboratorEntityFromModel(CollaboratorModel model) {
  return CollaboratorEntity(
    name: model.name,
    id: model.id,
  );
}
