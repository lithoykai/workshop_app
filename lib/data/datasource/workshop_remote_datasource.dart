import 'package:desafiofast/data/models/workshops/workshop_model.dart';
import 'package:desafiofast/domain/entities/response_data.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';

abstract class WorkshopRemoteDatasource {
  Future<ResponseData<WorkshopEntity>> getWorkshops();

  Future<WorkshopModel> postWorkshop(WorkshopModel data);
}
