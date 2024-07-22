import 'package:desafiofast/data/datasource/client/http_client_app.dart';
import 'package:desafiofast/data/datasource/workshop_remote_datasource.dart';
import 'package:desafiofast/data/models/workshops/workshop_model.dart';
import 'package:desafiofast/domain/entities/response_data.dart';
import 'package:desafiofast/domain/entities/workshop_entity.dart';
import 'package:desafiofast/infra/const/endpoint.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WorkshopRemoteDatasource)
class WorkshopRemoteDatasourceImpl implements WorkshopRemoteDatasource {
  final HttpClientApp _http;

  WorkshopRemoteDatasourceImpl({required HttpClientApp http}) : _http = http;

  @override
  Future<ResponseData<WorkshopEntity>> getWorkshops() async {
    try {
      final response = await _http.get(Endpoint.workshop);
      return ResponseData(data: []);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<WorkshopModel> postWorkshop(WorkshopModel data) async {
    try {
      final response = await _http.post(Endpoint.workshop, data.toJson());
      return WorkshopModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
