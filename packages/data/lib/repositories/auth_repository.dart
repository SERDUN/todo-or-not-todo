import 'package:injectable/injectable.dart';

import 'package:data/dtos/auth/auth.dart';
import 'package:domain/domain.dart';

import '../datasources/datasources.dart';
import '../datasources/local_keys_datasource.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.remoteDatasource, this.localKeysDatasource);

  final RemoteDatasource remoteDatasource;
  final LocalKeysDatasource localKeysDatasource;

  @override
  Future<void> login(String number, String password) async {
    final response = await remoteDatasource.login(LoginDto(email: number, password: password));
    await localKeysDatasource.saveToken(response.token);
    return Future.value();
  }

  @override
  Future<void> register(String number, String password) async {
    final response = await remoteDatasource.register(RegisterDto(email: number, password: password));
    await localKeysDatasource.saveToken(response.token);
    return Future.value();
  }
}
