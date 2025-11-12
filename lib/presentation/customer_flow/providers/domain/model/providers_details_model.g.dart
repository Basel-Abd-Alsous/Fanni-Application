// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvidersDetailsModelImpl _$$ProvidersDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProvidersDetailsModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProvidersDetailsModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProvidersDetailsModelImplToJson(
        _$ProvidersDetailsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ProvidersDetailsModelDataImpl _$$ProvidersDetailsModelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProvidersDetailsModelDataImpl(
      data: json['data'] == null
          ? null
          : DataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProvidersDetailsModelDataImplToJson(
        _$ProvidersDetailsModelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      id: (json['id'] as num?)?.toInt(),
      mobileNumber: json['mobile_number'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      inspectionFee: json['inspection_fee'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      cityName: json['city_name'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      coverImage: json['cover_image'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      callCount: (json['call_count'] as num?)?.toInt(),
      whatsappCount: (json['whatsapp_count'] as num?)?.toInt(),
      viewCount: (json['view_count'] as num?)?.toInt(),
      averageRating: (json['average_rating'] as num?)?.toInt(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile_number': instance.mobileNumber,
      'name': instance.name,
      'description': instance.description,
      'inspection_fee': instance.inspectionFee,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'profile_pic': instance.profilePic,
      'cover_image': instance.coverImage,
      'images': instance.images,
      'call_count': instance.callCount,
      'whatsapp_count': instance.whatsappCount,
      'view_count': instance.viewCount,
      'average_rating': instance.averageRating,
      'ratings': instance.ratings,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
