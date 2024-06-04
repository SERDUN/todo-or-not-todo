// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  AuthEmailInput? get emailInput => throw _privateConstructorUsedError;
  AuthPasswordInput? get passwordInput => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  SignUpStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {AuthEmailInput? emailInput,
      AuthPasswordInput? passwordInput,
      Object? error,
      SignUpStatus status});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailInput = freezed,
    Object? passwordInput = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      emailInput: freezed == emailInput
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as AuthEmailInput?,
      passwordInput: freezed == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as AuthPasswordInput?,
      error: freezed == error ? _value.error : error,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignUpStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthEmailInput? emailInput,
      AuthPasswordInput? passwordInput,
      Object? error,
      SignUpStatus status});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailInput = freezed,
    Object? passwordInput = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_$SignUpStateImpl(
      emailInput: freezed == emailInput
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as AuthEmailInput?,
      passwordInput: freezed == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as AuthPasswordInput?,
      error: freezed == error ? _value.error : error,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignUpStatus,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl extends _SignUpState {
  const _$SignUpStateImpl(
      {this.emailInput,
      this.passwordInput,
      this.error,
      this.status = SignUpStatus.initial})
      : super._();

  @override
  final AuthEmailInput? emailInput;
  @override
  final AuthPasswordInput? passwordInput;
  @override
  final Object? error;
  @override
  @JsonKey()
  final SignUpStatus status;

  @override
  String toString() {
    return 'SignUpState(emailInput: $emailInput, passwordInput: $passwordInput, error: $error, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.emailInput, emailInput) ||
                other.emailInput == emailInput) &&
            (identical(other.passwordInput, passwordInput) ||
                other.passwordInput == passwordInput) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailInput, passwordInput,
      const DeepCollectionEquality().hash(error), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {final AuthEmailInput? emailInput,
      final AuthPasswordInput? passwordInput,
      final Object? error,
      final SignUpStatus status}) = _$SignUpStateImpl;
  const _SignUpState._() : super._();

  @override
  AuthEmailInput? get emailInput;
  @override
  AuthPasswordInput? get passwordInput;
  @override
  Object? get error;
  @override
  SignUpStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
