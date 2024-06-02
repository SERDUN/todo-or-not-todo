//@GeneratedMicroModule;DomainPackageModule;package:domain/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:domain/repositories/repositories.dart' as _i5;
import 'package:domain/usecases/auth/auth.dart' as _i3;
import 'package:domain/usecases/auth/is_user_login_use_case.dart' as _i4;
import 'package:domain/usecases/auth/login_use_case.dart' as _i7;
import 'package:domain/usecases/auth/register_use_case.dart' as _i6;
import 'package:domain/usecases/tasks/create_task_use_case.dart' as _i13;
import 'package:domain/usecases/tasks/delete_task_use_case.dart' as _i9;
import 'package:domain/usecases/tasks/get_all_tasks_use_case.dart' as _i12;
import 'package:domain/usecases/tasks/get_task_by_id_use_case.dart' as _i10;
import 'package:domain/usecases/tasks/tasks.dart' as _i8;
import 'package:domain/usecases/tasks/update_task_use_case.dart' as _i11;
import 'package:injectable/injectable.dart' as _i1;

class DomainPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.IsUserAuthorizedUseCase>(
        () => _i4.IsUserUseCaseImpl(gh<_i5.AuthRepository>()));
    gh.factory<_i3.RegisterUseCase>(
        () => _i6.RegisterUseCaseImpl(gh<_i5.AuthRepository>()));
    gh.factory<_i3.LoginUseCase>(
        () => _i7.LoginUseCaseImpl(gh<_i5.AuthRepository>()));
    gh.factory<_i8.DeleteTaskByIdUseCase>(
        () => _i9.DeleteTaskByIdUseCaseImpl(gh<_i5.TaskRepository>()));
    gh.factory<_i8.GetTaskByIdUseCase>(
        () => _i10.GetTaskByIdUseCaseImpl(gh<_i5.TaskRepository>()));
    gh.factory<_i8.UpdateTaskByIdUseCase>(
        () => _i11.UpdateTaskByIdUseCaseImpl(gh<_i5.TaskRepository>()));
    gh.factory<_i8.GetAllTasksUseCase>(
        () => _i12.GetAllTasksUseCaseImpl(gh<_i5.TaskRepository>()));
    gh.factory<_i8.CreateTaskUseCase>(
        () => _i13.CreateTaskUseCaseImpl(gh<_i5.TaskRepository>()));
  }
}
