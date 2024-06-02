// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseDtoImpl _$$ErrorResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseDtoImpl(
      status: json['status'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorResponseDtoImplToJson(
        _$ErrorResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
