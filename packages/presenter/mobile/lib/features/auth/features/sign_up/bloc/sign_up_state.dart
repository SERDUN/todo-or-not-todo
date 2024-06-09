part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  success,
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    AuthEmailInput? emailInput,
    AuthPasswordInput? passwordInput,
    Object? error,
    @Default(SignUpStatus.initial) SignUpStatus status,
  }) = _SignUpState;

  const SignUpState._();

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

  SignUpState copyWithValidate({
    AuthEmailInput? emailInput,
    AuthPasswordInput? passwordInput,
  }) {
    return SignUpState(
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
    );
  }
}
