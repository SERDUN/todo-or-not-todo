// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoDTOImpl _$$TodoDTOImplFromJson(Map<String, dynamic> json) =>
    _$TodoDTOImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      details: json['details'] as String,
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
      position: (json['position'] as num?)?.toInt(),
      subTasks: (json['subTasks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TodoDTOImplToJson(_$TodoDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'priority': instance.priority,
      'status': instance.status,
      'position': instance.position,
      'subTasks': instance.subTasks,
    };
