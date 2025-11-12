// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvidersModelImpl _$$ProvidersModelImplFromJson(Map<String, dynamic> json) =>
    _$ProvidersModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProvidersModelImplToJson(
        _$ProvidersModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Providers.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$ProvidersImpl _$$ProvidersImplFromJson(Map<String, dynamic> json) =>
    _$ProvidersImpl(
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
          ?.map((e) => ImageProviders.fromJson(e as Map<String, dynamic>))
          .toList(),
      callCount: (json['call_count'] as num?)?.toInt(),
      whatsappCount: (json['whatsapp_count'] as num?)?.toInt(),
      viewCount: (json['view_count'] as num?)?.toInt(),
      averageRating: (json['average_rating'] as num?)?.toInt(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => RatingProviders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProvidersImplToJson(_$ProvidersImpl instance) =>
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

_$ImageProvidersImpl _$$ImageProvidersImplFromJson(Map<String, dynamic> json) =>
    _$ImageProvidersImpl(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ImageProvidersImplToJson(
        _$ImageProvidersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$RatingProvidersImpl _$$RatingProvidersImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingProvidersImpl(
      id: (json['id'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      customer: json['customer'] == null
          ? null
          : CustomerProviders.fromJson(
              json['customer'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$RatingProvidersImplToJson(
        _$RatingProvidersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'notes': instance.notes,
      'customer': instance.customer,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$CustomerProvidersImpl _$$CustomerProvidersImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerProvidersImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profilePic: json['profile_pic'] as String?,
    );

Map<String, dynamic> _$$CustomerProvidersImplToJson(
        _$CustomerProvidersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_pic': instance.profilePic,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      total: (json['total'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
    };
