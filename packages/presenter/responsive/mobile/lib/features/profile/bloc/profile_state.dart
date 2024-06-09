part of 'profile_cubit.dart';

enum ProfileStatus {
  initial,
  loading,
  error,
  success,
  logout,
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,
    Object? exception,
  }) = _ProfileState;
}
