// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasource/ata_remote_datasource.dart' as _i773;
import '../data/datasource/ata_remote_datasource_impl.dart' as _i595;
import '../data/datasource/client/http_client_app.dart' as _i325;
import '../data/datasource/client/third_module.dart' as _i812;
import '../data/datasource/collaborator_remote_datasource.dart' as _i197;
import '../data/datasource/collaborator_remote_datasource_impl.dart' as _i714;
import '../data/datasource/workshop_remote_datasource.dart' as _i973;
import '../data/datasource/workshop_remote_datasource_impl.dart' as _i992;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i361.Dio>(() => registerModule.dio());
  gh.factory<_i773.AtaRemoteDatasource>(() => _i595.AtaRemoteDatasourceImpl());
  gh.factory<_i197.CollaboratorRemoteDataSource>(
      () => _i714.CollaboratorRemoteDatasourceImpl());
  gh.factory<_i973.WorkshopRemoteDatasource>(() =>
      _i992.WorkshopRemoteDatasourceImpl(http: gh<_i325.HttpClientApp>()));
  return getIt;
}

class _$RegisterModule extends _i812.RegisterModule {}
