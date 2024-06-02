import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../datasources/_http_clients/http_clients.dart';

@InjectableInit.microPackage()
void initMicroPackage() {}

@module
abstract class RegisterModule {
  @LazySingleton()
  HttpClient apiClient() => HttpClient(http.Client(), baseUrl: '');
}
