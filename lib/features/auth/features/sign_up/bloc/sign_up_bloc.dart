import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

import '../../../models/model.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc(this.registerUseCase) : super(const SignUpState());

  final RegisterUseCase registerUseCase;

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

  Future<void> trySignUp() async {
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
      emit(state.copyWith(status: SignUpStatus.loading));
      await registerUseCase.execute(email, password);
      emit(state.copyWith(status: SignUpStatus.success));
    } catch (e) {
      emit(state.copyWith(
        error: e,
        status: SignUpStatus.initial,
      ));
    }
  }
}
