// To parse this JSON data, do
//
//     final merchantProfileModel = merchantProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'merchant_profile_model.freezed.dart';
part 'merchant_profile_model.g.dart';

MerchantProfileModel merchantProfileModelFromJson(String str) => MerchantProfileModel.fromJson(json.decode(str));

String merchantProfileModelToJson(MerchantProfileModel data) => json.encode(data.toJson());

@freezed
class MerchantProfileModel with _$MerchantProfileModel {
  const factory MerchantProfileModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") MerchantProfile? data,
  }) = _MerchantProfileModel;

  factory MerchantProfileModel.fromJson(Map<String, dynamic> json) => _$MerchantProfileModelFromJson(json);
}

@freezed
@HiveType(typeId: 1)
class MerchantProfile with _$MerchantProfile {
  const factory MerchantProfile({
    @HiveField(0) @JsonKey(name: "id") int? id,
    @HiveField(1) @JsonKey(name: "mobile_number") String? mobileNumber,
    @HiveField(2) @JsonKey(name: "name") String? name,
    @HiveField(3) @JsonKey(name: "description") dynamic description,
    @HiveField(4) @JsonKey(name: "inspection_fee") dynamic inspectionFee,
    @HiveField(5) @JsonKey(name: "city_id") dynamic cityId,
    @HiveField(6) @JsonKey(name: "city_name") dynamic cityName,
    @HiveField(7) @JsonKey(name: "category_id") dynamic categoryId,
    @HiveField(8) @JsonKey(name: "category_name") dynamic categoryName,
    @HiveField(9) @JsonKey(name: "profile_pic") String? profilePic,
    @HiveField(10) @JsonKey(name: "cover_image") String? coverImage,
    @HiveField(11) @JsonKey(name: "images") List<ImagesWork>? images,
    @HiveField(12) @JsonKey(name: "call_count") int? callCount,
    @HiveField(13) @JsonKey(name: "whatsapp_count") int? whatsappCount,
    @HiveField(14) @JsonKey(name: "view_count") int? viewCount,
    @HiveField(15) @JsonKey(name: "average_rating") int? averageRating,
    @HiveField(16) @JsonKey(name: "ratings") List<Rating>? ratings,
  }) = _MerchantProfile;

  factory MerchantProfile.fromJson(Map<String, dynamic> json) => _$MerchantProfileFromJson(json);
}

@freezed
@HiveType(typeId: 2)
class Rating with _$Rating {
  const factory Rating({
    @HiveField(0) @JsonKey(name: "id") int? id,
    @HiveField(1) @JsonKey(name: "rate") int? rate,
    @HiveField(2) @JsonKey(name: "notes") String? notes,
    @HiveField(3) @JsonKey(name: "customer") Customer? customer,
    @HiveField(4) @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class Customer with _$Customer {
  const factory Customer({
    @HiveField(0) @JsonKey(name: "id") int? id,
    @HiveField(1) @JsonKey(name: "name") String? name,
    @HiveField(2) @JsonKey(name: "profile_pic") String? profilePic,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

@freezed
@HiveType(typeId: 4)
class ImagesWork with _$ImagesWork {
  const factory ImagesWork({@HiveField(0) @JsonKey(name: "id") int? id, @HiveField(1) @JsonKey(name: "url") String? url}) = _ImagesWork;
  factory ImagesWork.fromJson(Map<String, dynamic> json) => _$ImagesWorkFromJson(json);
}
