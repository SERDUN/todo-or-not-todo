abstract class LoginUseCase {
  Future<void> execute(String number, String password);
}

abstract class RegisterUseCase {
  Future<void> execute(String number, String password);
}

abstract class LogoutUseCase {
  Future<void> execute();
}

abstract class IsUserAuthorizedUseCase {
  Future<bool> execute();
}
