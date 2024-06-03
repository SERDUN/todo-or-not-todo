part of 'sign_in_bloc.dart';

enum SignInStatus {
  initial,
  loading,
  success,
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required bool isEmailValid,
    required bool isPasswordValid,
    Object? error,
    @Default(SignInStatus.initial) SignInStatus status,
  }) = _SignInState;

  const SignInState._();

  bool get isError => error != null;
}
