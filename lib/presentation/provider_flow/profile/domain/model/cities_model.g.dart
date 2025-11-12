// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitiesModelImpl _$$CitiesModelImplFromJson(Map<String, dynamic> json) =>
    _$CitiesModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Cities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CitiesModelImplToJson(_$CitiesModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$CitiesImpl _$$CitiesImplFromJson(Map<String, dynamic> json) => _$CitiesImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CitiesImplToJson(_$CitiesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
