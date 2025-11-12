// To parse this JSON data, do
//
//     final providersModel = providersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'providers_model.freezed.dart';
part 'providers_model.g.dart';

ProvidersModel providersModelFromJson(String str) => ProvidersModel.fromJson(json.decode(str));

String providersModelToJson(ProvidersModel data) => json.encode(data.toJson());

@freezed
class ProvidersModel with _$ProvidersModel {
  const factory ProvidersModel({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") Data? data}) =
      _ProvidersModel;

  factory ProvidersModel.fromJson(Map<String, dynamic> json) => _$ProvidersModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({@JsonKey(name: "data") List<Providers>? data, @JsonKey(name: "pagination") Pagination? pagination}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Providers with _$Providers {
  const factory Providers({
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
    @JsonKey(name: "images") List<ImageProviders>? images,
    @JsonKey(name: "call_count") int? callCount,
    @JsonKey(name: "whatsapp_count") int? whatsappCount,
    @JsonKey(name: "view_count") int? viewCount,
    @JsonKey(name: "average_rating") int? averageRating,
    @JsonKey(name: "ratings") List<RatingProviders>? ratings,
  }) = _Providers;

  factory Providers.fromJson(Map<String, dynamic> json) => _$ProvidersFromJson(json);
}

@freezed
class ImageProviders with _$ImageProviders {
  const factory ImageProviders({@JsonKey(name: "id") int? id, @JsonKey(name: "url") String? url}) = _ImageProviders;

  factory ImageProviders.fromJson(Map<String, dynamic> json) => _$ImageProvidersFromJson(json);
}

@freezed
class RatingProviders with _$RatingProviders {
  const factory RatingProviders({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "rate") int? rate,
    @JsonKey(name: "notes") String? notes,
    @JsonKey(name: "customer") CustomerProviders? customer,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _RatingProviders;

  factory RatingProviders.fromJson(Map<String, dynamic> json) => _$RatingProvidersFromJson(json);
}

@freezed
class CustomerProviders with _$CustomerProviders {
  const factory CustomerProviders({@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name, @JsonKey(name: "profile_pic") String? profilePic}) =
      _CustomerProviders;

  factory CustomerProviders.fromJson(Map<String, dynamic> json) => _$CustomerProvidersFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "total_pages") int? totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}
