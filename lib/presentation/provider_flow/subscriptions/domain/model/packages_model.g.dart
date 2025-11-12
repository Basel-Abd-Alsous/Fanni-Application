// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackagesModelImpl _$$PackagesModelImplFromJson(Map<String, dynamic> json) =>
    _$PackagesModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Packages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackagesModelImplToJson(_$PackagesModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$PackagesImpl _$$PackagesImplFromJson(Map<String, dynamic> json) =>
    _$PackagesImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      descriptionAr: json['description_ar'] as String?,
      price: json['price'] as String?,
      period: json['period'] as String?,
      features: json['features'] as String?,
      featuresAr: json['features_ar'] as String?,
      isActive: json['is_active'] as bool?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$PackagesImplToJson(_$PackagesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'description_ar': instance.descriptionAr,
      'price': instance.price,
      'period': instance.period,
      'features': instance.features,
      'features_ar': instance.featuresAr,
      'is_active': instance.isActive,
      'isSelected': instance.isSelected,
    };
