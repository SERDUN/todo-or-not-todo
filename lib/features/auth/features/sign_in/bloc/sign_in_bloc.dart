import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Cubit<SignInState> {
  SignInBloc(this.loginUseCase)
      : super(const SignInState(
          isEmailValid: true,
          isPasswordValid: true,
        ));

  final LoginUseCase loginUseCase;

  Future<void> signIn(String email, String password) async {
    // TODO(Serdun): do correct validation
    emit(state.copyWith(status: SignInStatus.loading));
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        await loginUseCase.execute(email, password);
        emit(state.copyWith(status: SignInStatus.success));
      } catch (e) {
        emit(state.copyWith(
          error: e,
          status: SignInStatus.initial,
        ));
      }
    } else {
      emit(state.copyWith(
        error: Exception('Inputs not valid'),
        status: SignInStatus.initial,
      ));
    }
  }

  void isEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    final isValid = emailRegex.hasMatch(email);
    emit(state.copyWith(isEmailValid: isValid));
  }
}
