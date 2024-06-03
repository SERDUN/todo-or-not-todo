import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc(this.registerUseCase)
      : super(const SignUpState(
          isEmailValid: true,
          isPasswordValid: true,
        ));

  final RegisterUseCase registerUseCase;

  // TODO(Kovalchuck): TODO: Implement the function
  Future<void> signUp(String email, String password) async {
    if (state.isPasswordValid && state.isEmailValid) {
      if (email.isNotEmpty && password.isNotEmpty) {
        emit(state.copyWith(status: SignUpStatus.loading));
        try {
          await registerUseCase.execute(email, password);
          emit(state.copyWith(status: SignUpStatus.success));
        } catch (e) {
          emit(state.copyWith(error: e));
        }
      }
    } else {
      emit(state.copyWith(
        error: Exception('Inputs not valid'),
        status: SignUpStatus.success,
      ));
    }
  }

  void isEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    final isValid = emailRegex.hasMatch(email);
    emit(state.copyWith(isEmailValid: isValid));
  }

  void isPasswordValid(String password) {
    if (password.length < 8 ||
        !password.contains(RegExp('[A-Z]')) ||
        !password.contains(RegExp('[0-9]')) ||
        !password.contains(RegExp('[a-z]'))) {
      emit(state.copyWith(isPasswordValid: false));
    } else {
      emit(state.copyWith(isPasswordValid: true));
    }
  }

  void setInitialEnum() {
    emit(state.copyWith(status: SignUpStatus.initial));
  }
}
