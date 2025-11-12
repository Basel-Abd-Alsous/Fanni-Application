// To parse this JSON data, do
//
//     final majorModel = majorModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'major_model.freezed.dart';
part 'major_model.g.dart';

MajorModel majorModelFromJson(String str) => MajorModel.fromJson(json.decode(str));

String majorModelToJson(MajorModel data) => json.encode(data.toJson());

@freezed
class MajorModel with _$MajorModel {
  const factory MajorModel({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") List<Major>? data}) =
      _MajorModel;

  factory MajorModel.fromJson(Map<String, dynamic> json) => _$MajorModelFromJson(json);
}

@freezed
class Major with _$Major {
  const factory Major({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "sub_categories") List<dynamic>? subCategories,
    @JsonKey(name: "tags") List<dynamic>? tags,
  }) = _Major;

  factory Major.fromJson(Map<String, dynamic> json) => _$MajorFromJson(json);
}
