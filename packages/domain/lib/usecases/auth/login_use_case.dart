import 'package:injectable/injectable.dart';

import 'package:domain/repositories/repositories.dart';

import 'auth.dart';

@Injectable(as: LoginUseCase)
class LoginUseCaseImpl implements LoginUseCase {
  LoginUseCaseImpl(this.authRepository);

  final AuthRepository authRepository;

  @override
  Future<void> execute(String number, String password) async {
    await authRepository.login(number, password);
  }
}
