// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorResponseDto _$ErrorResponseDtoFromJson(Map<String, dynamic> json) {
  return _ErrorResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseDto {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseDtoCopyWith<ErrorResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseDtoCopyWith<$Res> {
  factory $ErrorResponseDtoCopyWith(
          ErrorResponseDto value, $Res Function(ErrorResponseDto) then) =
      _$ErrorResponseDtoCopyWithImpl<$Res, ErrorResponseDto>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$ErrorResponseDtoCopyWithImpl<$Res, $Val extends ErrorResponseDto>
    implements $ErrorResponseDtoCopyWith<$Res> {
  _$ErrorResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResponseDtoImplCopyWith<$Res>
    implements $ErrorResponseDtoCopyWith<$Res> {
  factory _$$ErrorResponseDtoImplCopyWith(_$ErrorResponseDtoImpl value,
          $Res Function(_$ErrorResponseDtoImpl) then) =
      __$$ErrorResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$ErrorResponseDtoImplCopyWithImpl<$Res>
    extends _$ErrorResponseDtoCopyWithImpl<$Res, _$ErrorResponseDtoImpl>
    implements _$$ErrorResponseDtoImplCopyWith<$Res> {
  __$$ErrorResponseDtoImplCopyWithImpl(_$ErrorResponseDtoImpl _value,
      $Res Function(_$ErrorResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ErrorResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseDtoImpl implements _ErrorResponseDto {
  const _$ErrorResponseDtoImpl({required this.status, required this.message});

  factory _$ErrorResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorResponseDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseDtoImplCopyWith<_$ErrorResponseDtoImpl> get copyWith =>
      __$$ErrorResponseDtoImplCopyWithImpl<_$ErrorResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseDto implements ErrorResponseDto {
  const factory _ErrorResponseDto(
      {required final String status,
      required final String message}) = _$ErrorResponseDtoImpl;

  factory _ErrorResponseDto.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseDtoImplCopyWith<_$ErrorResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
