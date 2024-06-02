//@GeneratedMicroModule;DataPackageModule;package:data/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:data/datasources/datasources.dart' as _i9;
import 'package:data/datasources/local_keys_datasource.dart' as _i6;
import 'package:data/datasources/remote_datasource.dart' as _i5;
import 'package:data/di/injection.dart' as _i11;
import 'package:data/repositories/auth_repository.dart' as _i10;
import 'package:data/repositories/tasks_repository.dart' as _i8;
import 'package:dio/dio.dart' as _i4;
import 'package:domain/domain.dart' as _i7;
import 'package:injectable/injectable.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

class DataPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs(),
      preResolve: true,
    );
    gh.lazySingleton<_i4.Dio>(() => registerModule.githubClient());
    gh.factory<_i5.RemoteDatasource>(() => _i5.RemoteDatasource(gh<_i4.Dio>()));
    gh.factory<_i6.LocalKeysDatasource>(
        () => _i6.LocalKeysDatasource(gh<_i3.SharedPreferences>()));
    gh.factory<_i7.TaskRepository>(
        () => _i8.TasksRepositoryImpl(gh<_i9.RemoteDatasource>()));
    gh.factory<_i7.AuthRepository>(() => _i10.AuthRepositoryImpl(
          gh<_i9.RemoteDatasource>(),
          gh<_i6.LocalKeysDatasource>(),
        ));
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
