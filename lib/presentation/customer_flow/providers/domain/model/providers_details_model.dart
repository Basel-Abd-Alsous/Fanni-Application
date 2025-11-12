// To parse this JSON data, do
//
//     final providersDetailsModel = providersDetailsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../../provider_flow/layout/domain/model/merchant_profile_model.dart';

part 'providers_details_model.freezed.dart';
part 'providers_details_model.g.dart';

ProvidersDetailsModel providersDetailsModelFromJson(String str) => ProvidersDetailsModel.fromJson(json.decode(str));

String providersDetailsModelToJson(ProvidersDetailsModel data) => json.encode(data.toJson());

@freezed
class ProvidersDetailsModel with _$ProvidersDetailsModel {
  const factory ProvidersDetailsModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") ProvidersDetailsModelData? data,
  }) = _ProvidersDetailsModel;

  factory ProvidersDetailsModel.fromJson(Map<String, dynamic> json) => _$ProvidersDetailsModelFromJson(json);
}

@freezed
class ProvidersDetailsModelData with _$ProvidersDetailsModelData {
  const factory ProvidersDetailsModelData({@JsonKey(name: "data") DataData? data}) = _ProvidersDetailsModelData;

  factory ProvidersDetailsModelData.fromJson(Map<String, dynamic> json) => _$ProvidersDetailsModelDataFromJson(json);
}

@freezed
class DataData with _$DataData {
  const factory DataData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "mobile_number") String? mobileNumber,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "inspection_fee") String? inspectionFee,
    @JsonKey(name: "city_id") int? cityId,
    @JsonKey(name: "city_name") String? cityName,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "profile_pic") String? profilePic,
    @JsonKey(name: "cover_image") String? coverImage,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "call_count") int? callCount,
    @JsonKey(name: "whatsapp_count") int? whatsappCount,
    @JsonKey(name: "view_count") int? viewCount,
    @JsonKey(name: "average_rating") int? averageRating,
    @JsonKey(name: "ratings") List<Rating>? ratings,
  }) = _DataData;

  factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({@JsonKey(name: "id") int? id, @JsonKey(name: "url") String? url}) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
