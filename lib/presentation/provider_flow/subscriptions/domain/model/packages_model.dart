// To parse this JSON data, do
//
//     final packagesModel = packagesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'packages_model.freezed.dart';
part 'packages_model.g.dart';

PackagesModel packagesModelFromJson(String str) => PackagesModel.fromJson(json.decode(str));

String packagesModelToJson(PackagesModel data) => json.encode(data.toJson());

@freezed
class PackagesModel with _$PackagesModel {
  const factory PackagesModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<Packages>? data,
  }) = _PackagesModel;

  factory PackagesModel.fromJson(Map<String, dynamic> json) => _$PackagesModelFromJson(json);
}

@freezed
class Packages with _$Packages {
  const factory Packages({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "description_ar") String? descriptionAr,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "period") String? period,
    @JsonKey(name: "features") String? features,
    @JsonKey(name: "features_ar") String? featuresAr,
    @JsonKey(name: "is_active") bool? isActive,
    @Default(false) bool? isSelected,
  }) = _Packages;

  factory Packages.fromJson(Map<String, dynamic> json) => _$PackagesFromJson(json);
}
