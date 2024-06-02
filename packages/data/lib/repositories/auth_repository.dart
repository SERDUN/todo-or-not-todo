import 'package:injectable/injectable.dart';

import 'package:data/dtos/auth/auth.dart';
import 'package:domain/domain.dart';

import '../datasources/datasources.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.remoteDatasource);

  final RemoteDatasource remoteDatasource;

  @override
  Future<void> login(String number, String password) {
    return remoteDatasource.login(LoginDto(email: number, password: password));
  }

  @override
  Future<void> register(String number, String password) {
    return remoteDatasource.register(RegisterDto(email: number, password: password));
  }
}
