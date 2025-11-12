// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannersModelImpl _$$BannersModelImplFromJson(Map<String, dynamic> json) =>
    _$BannersModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannersModelImplToJson(_$BannersModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$BannersImpl _$$BannersImplFromJson(Map<String, dynamic> json) =>
    _$BannersImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      link: json['link'] as String?,
      banner: json['banner'] as String?,
      type: json['type'] as String?,
      category: json['category'],
      service: json['service'],
      merchant: json['merchant'] as String?,
    );

Map<String, dynamic> _$$BannersImplToJson(_$BannersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'banner': instance.banner,
      'type': instance.type,
      'category': instance.category,
      'service': instance.service,
      'merchant': instance.merchant,
    };
