import 'package:desafiofast/data/models/ata/ata_model.dart';
import 'package:desafiofast/domain/entities/response_data.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';

abstract class AtaRemoteDatasource {
  Future<ResponseData<WorkshopEntity>> getWorkshops();

  Future<AtaModel> postAta(AtaModel data);
}
