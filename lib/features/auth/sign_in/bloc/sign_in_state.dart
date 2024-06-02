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
    @Default(SignInStatus.initial) SignInStatus status,
  }) = _SignInState;
}
