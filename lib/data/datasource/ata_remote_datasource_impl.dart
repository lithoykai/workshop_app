import 'package:desafiofast/data/datasource/ata_remote_datasource.dart';
import 'package:desafiofast/data/models/ata/ata_model.dart';
import 'package:desafiofast/domain/entities/response_data.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AtaRemoteDatasource)
class AtaRemoteDatasourceImpl implements AtaRemoteDatasource {
  @override
  Future<ResponseData<WorkshopEntity>> getWorkshops() {
    // TODO: implement getWorkshops
    throw UnimplementedError();
  }

  @override
  Future<AtaModel> postAta(AtaModel data) {
    // TODO: implement postAta
    throw UnimplementedError();
  }
}
