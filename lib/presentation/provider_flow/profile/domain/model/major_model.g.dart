// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'major_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MajorModelImpl _$$MajorModelImplFromJson(Map<String, dynamic> json) =>
    _$MajorModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Major.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MajorModelImplToJson(_$MajorModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$MajorImpl _$$MajorImplFromJson(Map<String, dynamic> json) => _$MajorImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      subCategories: json['sub_categories'] as List<dynamic>?,
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$$MajorImplToJson(_$MajorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'sub_categories': instance.subCategories,
      'tags': instance.tags,
    };
