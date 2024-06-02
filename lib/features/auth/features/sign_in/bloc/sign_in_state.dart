part of 'sign_in_bloc.dart';

enum SignInStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool obscureText,
    String? errorMessage,
    @Default(SignInStatus.initial) SignInStatus status,
  }) = _SignInState;
}
