import 'package:domain/domain.dart';

abstract class AuthRepository {
  Future<UserLoginStatus> getUserLoginStatus();

  Future<void> login(String number, String password);

  Future<void> register(String number, String password);
}
