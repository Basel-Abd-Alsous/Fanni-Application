// To parse this JSON data, do
//
//     final cliqInfoModel = cliqInfoModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cliq_info_model.freezed.dart';
part 'cliq_info_model.g.dart';

CliqInfoModel cliqInfoModelFromJson(String str) => CliqInfoModel.fromJson(json.decode(str));

String cliqInfoModelToJson(CliqInfoModel data) => json.encode(data.toJson());

@freezed
class CliqInfoModel with _$CliqInfoModel {
  const factory CliqInfoModel({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") List<CliqInfo>? data}) =
      _CliqInfoModel;

  factory CliqInfoModel.fromJson(Map<String, dynamic> json) => _$CliqInfoModelFromJson(json);
}

@freezed
class CliqInfo with _$CliqInfo {
  const factory CliqInfo({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @JsonKey(name: "second_phone_number") String? secondPhoneNumber,
    @JsonKey(name: "click_number") String? clickNumber,
    @JsonKey(name: "click_name") String? clickName,
  }) = _CliqInfo;

  factory CliqInfo.fromJson(Map<String, dynamic> json) => _$CliqInfoFromJson(json);
}
