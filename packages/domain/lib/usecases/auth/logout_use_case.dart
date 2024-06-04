import 'package:injectable/injectable.dart';

import 'package:domain/repositories/repositories.dart';

import 'auth.dart';

@Injectable(as: LogoutUseCase)
class LogoutUseCaseImpl implements LogoutUseCase {
  LogoutUseCaseImpl(this.authRepository);

  final AuthRepository authRepository;

  @override
  Future<void> execute() async {
    await authRepository.logout();
  }
}
