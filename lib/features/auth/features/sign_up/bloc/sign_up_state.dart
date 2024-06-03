part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  success,
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool obscureText,
    Object? error,
    @Default(SignUpStatus.initial) SignUpStatus status,
  }) = _SignUpState;

  const SignUpState._();

  bool get isError => error != null;
}
