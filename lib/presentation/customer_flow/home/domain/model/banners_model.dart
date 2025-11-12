// To parse this JSON data, do
//
//     final bannersModel = bannersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'banners_model.freezed.dart';
part 'banners_model.g.dart';

BannersModel bannersModelFromJson(String str) => BannersModel.fromJson(json.decode(str));

String bannersModelToJson(BannersModel data) => json.encode(data.toJson());

@freezed
class BannersModel with _$BannersModel {
  const factory BannersModel({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") List<Banners>? data}) =
      _BannersModel;

  factory BannersModel.fromJson(Map<String, dynamic> json) => _$BannersModelFromJson(json);
}

@freezed
class Banners with _$Banners {
  const factory Banners({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "banner") String? banner,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "category") dynamic category,
    @JsonKey(name: "service") dynamic service,
    @JsonKey(name: "merchant") String? merchant,
  }) = _Banners;

  factory Banners.fromJson(Map<String, dynamic> json) => _$BannersFromJson(json);
}
