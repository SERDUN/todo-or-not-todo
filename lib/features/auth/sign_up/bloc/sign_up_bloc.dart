import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc()
      : super(const SignUpState(
          isEmailValid: true,
          isPasswordValid: true,
          obscureText: true,
        ));

  /// TODO: Implement the function
  void signUp(String email, String password) async {
    if (state.isPasswordValid && state.isEmailValid) {
      if (email.isNotEmpty && password.isNotEmpty) {
        emit(state.copyWith(status: SignUpStatus.loading));
        try {
          emit(state.copyWith(status: SignUpStatus.success));
        } catch (e) {
          emit(state.copyWith(
            status: SignUpStatus.error,
          ));
        }
      }
    }
  }

  void isEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    final isValid = emailRegex.hasMatch(email);
    emit(state.copyWith(isEmailValid: isValid));
  }

  void isPasswordValid(String password) {
    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[a-z]'))) {
      emit(state.copyWith(isPasswordValid: false));
    } else {
      emit(state.copyWith(isPasswordValid: true));
    }
  }

  void showPassword() {
    emit(state.copyWith(obscureText: true));
  }

  void hidePassword() {
    emit(state.copyWith(obscureText: false));
  }

  void setInitialEnum() {
    emit(state.copyWith(status: SignUpStatus.initial));
  }
}
