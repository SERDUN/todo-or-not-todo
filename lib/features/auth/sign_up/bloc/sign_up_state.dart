part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool obscureText,
    @Default(SignUpStatus.initial) SignUpStatus status,
  }) = _SignUpState;
}