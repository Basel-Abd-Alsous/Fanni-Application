// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerReviewsModelImpl _$$CustomerReviewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerReviewsModelImpl(
      merchantId: (json['merchant_id'] as num?)?.toInt(),
      merchantName: json['merchant_name'] as String?,
      merchantCategoryId: json['merchant_category_id'],
      merchantCategoryName: json['merchant_category_name'] as String?,
      profilePic: json['profile_pic'] as String?,
      interactionId: (json['interaction_id'] as num?)?.toInt(),
      interactionDate: json['interaction_date'] == null
          ? null
          : DateTime.parse(json['interaction_date'] as String),
    );

Map<String, dynamic> _$$CustomerReviewsModelImplToJson(
        _$CustomerReviewsModelImpl instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'merchant_name': instance.merchantName,
      'merchant_category_id': instance.merchantCategoryId,
      'merchant_category_name': instance.merchantCategoryName,
      'profile_pic': instance.profilePic,
      'interaction_id': instance.interactionId,
      'interaction_date': instance.interactionDate?.toIso8601String(),
    };
