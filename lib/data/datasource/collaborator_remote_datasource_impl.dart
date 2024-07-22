import 'package:desafiofast/data/datasource/collaborator_remote_datasource.dart';
import 'package:desafiofast/data/models/collaborator/collaborator_model.dart';
import 'package:desafiofast/domain/entities/response_data.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CollaboratorRemoteDataSource)
class CollaboratorRemoteDatasourceImpl implements CollaboratorRemoteDataSource {
  @override
  Future<ResponseData<CollaboratorModel>> getCollaborators() {
    // TODO: implement getCollaborators
    throw UnimplementedError();
  }

  @override
  Future<CollaboratorModel> postCollaborator(CollaboratorModel data) {
    // TODO: implement postCollaborator
    throw UnimplementedError();
  }
}
