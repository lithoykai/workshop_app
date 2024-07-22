import 'package:desafiofast/data/models/workshops/workshop_model.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';

WorkshopModel $WorkshopModelFromEntity(WorkshopEntity entity) {
  return WorkshopModel(
      name: entity.name,
      id: entity.id,
      description: entity.description,
      realizationDate: entity.realizationDate);
}

WorkshopEntity $WorkshopEntityFromModel(WorkshopModel model) {
  return WorkshopEntity(
      name: model.name,
      id: model.id,
      description: model.description,
      realizationDate: model.realizationDate);
}
