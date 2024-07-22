import 'package:desafiofast/data/models/collaborator/collaborator_model.dart';
import 'package:desafiofast/domain/entities/response_data.dart';

abstract class CollaboratorRemoteDataSource {
  Future<ResponseData<CollaboratorModel>> getCollaborators();

  Future<CollaboratorModel> postCollaborator(CollaboratorModel data);
}
