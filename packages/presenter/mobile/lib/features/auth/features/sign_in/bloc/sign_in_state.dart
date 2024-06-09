part of 'sign_in_bloc.dart';

enum SignInStatus {
  initial,
  loading,
  success,
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    AuthEmailInput? emailInput,
    AuthPasswordInput? passwordInput,
    Object? error,
    @Default(SignInStatus.initial) SignInStatus status,
  }) = _SignInState;

  const SignInState._();

  bool get isError => error != null;

  bool get isAllFieldsValid {
    final passwordInputEmpty = passwordInput == null;
    final emailInputEmpty = emailInput == null;

    if (passwordInputEmpty || emailInputEmpty) {
      return false;
    } else {
      return Formz.validate([passwordInput!, emailInput!]);
    }
  }

  SignInState copyWithValidate({
    AuthEmailInput? emailInput,
    AuthPasswordInput? passwordInput,
  }) {
    return SignInState(
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
    );
  }
}
