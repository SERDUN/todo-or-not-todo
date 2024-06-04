import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';
import 'package:todo_or_not_todo/features/auth/models/model.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Cubit<SignInState> {
  SignInBloc(this.loginUseCase) : super(const SignInState());

  final LoginUseCase loginUseCase;

  void authPasswordChanged(String password) {
    emit(state.copyWithValidate(
      passwordInput: AuthPasswordInput.dirty(password),
    ));
  }

  void authEmailChanged(String email) {
    emit(
      state.copyWithValidate(
        emailInput: AuthEmailInput.dirty(email),
      ),
    );
  }

  Future<void> trySignIn() async {
    if (state.isAllFieldsValid) {
      await _signIn(state.emailInput!.value, state.passwordInput!.value);
    } else {
      emit(
        state.copyWith(
          passwordInput: state.passwordInput?.toDirty(),
          emailInput: state.emailInput?.toDirty(),
        ),
      );
    }
  }

  Future<void> _signIn(String email, String password) async {
    try {
      emit(state.copyWith(status: SignInStatus.loading));
      await loginUseCase.execute(email, password);
      emit(state.copyWith(status: SignInStatus.success));
    } catch (e) {
      emit(state.copyWith(
        error: e,
        status: SignInStatus.initial,
      ));
    }
  }
}
