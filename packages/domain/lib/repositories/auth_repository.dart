abstract class AuthRepository {
  Future<void> login(String number, String password);

  Future<void> register(String number, String password);
}
