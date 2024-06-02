import 'package:domain/models/user_login_status.dart';
import 'package:injectable/injectable.dart';

import 'package:domain/repositories/repositories.dart';

import 'auth.dart';

@Injectable(as: IsUserAuthorizedUseCase)
class IsUserUseCaseImpl implements IsUserAuthorizedUseCase {
  IsUserUseCaseImpl(this.authRepository);

  final AuthRepository authRepository;

  @override
  Future<bool> execute() async {
    final status = await authRepository.getUserLoginStatus();
    return Future.value(status == UserLoginStatus.authorized);
  }
}
