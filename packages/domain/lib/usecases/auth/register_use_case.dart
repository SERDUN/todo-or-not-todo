import 'package:injectable/injectable.dart';

import 'package:domain/repositories/repositories.dart';

import 'auth.dart';

@Injectable(as: RegisterUseCase)
class RegisterUseCaseImpl implements RegisterUseCase {
  RegisterUseCaseImpl(this.authRepository);

  final AuthRepository authRepository;

  @override
  Future<void> execute(String number, String password) async {
    await authRepository.register(number, password);
  }
}
