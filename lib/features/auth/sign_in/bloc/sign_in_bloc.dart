import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Cubit<SignInState> {
  SignInBloc()
      : super(const SignInState(
          isEmailValid: true,
          isPasswordValid: true,
          obscureText: true,
        ));

  // TODO(Kovalchuck): Implement the function
  Future<void> signIn(String email, String password) async {
    emit(state.copyWith(status: SignInStatus.loading));
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        emit(state.copyWith(status: SignInStatus.success));
      } catch (e) {
        emit(state.copyWith(
          status: SignInStatus.error,
        ));
      }
    }
  }

  void isEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    final isValid = emailRegex.hasMatch(email);
    emit(state.copyWith(isEmailValid: isValid));
  }

  void showPassword() {
    emit(state.copyWith(obscureText: true));
  }

  void hidePassword() {
    emit(state.copyWith(obscureText: false));
  }

  void setInitialEnum() {
    emit(state.copyWith(status: SignInStatus.error));
  }
}
