import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:data/datasources/datasources.dart';

@InjectableInit.microPackage()
void initMicroPackage() {}

@module
abstract class RegisterModule {
  @LazySingleton()
  Dio githubClient() {
    final option = BaseOptions(baseUrl: 'https://us-central1-todo-or-not-todo-5b704.cloudfunctions.net/api/v1');

    return Dio(option)
      ..interceptors.addAll([
        LoggingInterceptor(),
      ]);
  }

  @preResolve
  Future<SharedPreferences> prefs() => SharedPreferences.getInstance();
}
