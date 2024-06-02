//@GeneratedMicroModule;DataPackageModule;package:data/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:data/datasources/datasources.dart' as _i8;
import 'package:data/datasources/local_keys_datasource.dart' as _i3;
import 'package:data/datasources/remote_datasource.dart' as _i5;
import 'package:data/di/injection.dart' as _i10;
import 'package:data/repositories/auth_repository.dart' as _i9;
import 'package:data/repositories/tasks_repository.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:domain/domain.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;

class DataPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final registerModule = _$RegisterModule();
    gh.factory<_i3.LocalKeysDatasource>(() => _i3.LocalKeysDatasource());
    gh.lazySingleton<_i4.Dio>(() => registerModule.githubClient());
    gh.factory<_i5.RemoteDatasource>(() => _i5.RemoteDatasource(gh<_i4.Dio>()));
    gh.factory<_i6.TaskRepository>(
        () => _i7.TasksRepositoryImpl(gh<_i8.RemoteDatasource>()));
    gh.factory<_i6.AuthRepository>(() => _i9.AuthRepositoryImpl(
          gh<_i8.RemoteDatasource>(),
          gh<_i3.LocalKeysDatasource>(),
        ));
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
