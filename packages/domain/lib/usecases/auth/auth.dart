abstract class LoginUseCase {
  Future<void> execute(String number, String password);
}

abstract class RegisterUseCase {
  Future<void> execute(String number, String password);
}
