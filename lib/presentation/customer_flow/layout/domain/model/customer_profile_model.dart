// To parse this JSON data, do
//
//     final customerProfileModel = customerProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:hive_flutter/adapters.dart';

part 'customer_profile_model.freezed.dart';
part 'customer_profile_model.g.dart';

CustomerProfileModel customerProfileModelFromJson(String str) => CustomerProfileModel.fromJson(json.decode(str));

String customerProfileModelToJson(CustomerProfileModel data) => json.encode(data.toJson());

@freezed
class CustomerProfileModel with _$CustomerProfileModel {
  const factory CustomerProfileModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") CustomerProfile? data,
  }) = _CustomerProfileModel;

  factory CustomerProfileModel.fromJson(Map<String, dynamic> json) => _$CustomerProfileModelFromJson(json);
}

@freezed
@HiveType(typeId: 5)
class CustomerProfile with _$CustomerProfile {
  const factory CustomerProfile({
    @HiveField(0) @JsonKey(name: "id") int? id,
    @HiveField(1) @JsonKey(name: "mobile_number") String? mobileNumber,
    @HiveField(2) @JsonKey(name: "email") dynamic email,
    @HiveField(3) @JsonKey(name: "name") String? name,
    @HiveField(4) @JsonKey(name: "profile_pic") String? profilePic,
  }) = _CustomerProfile;

  factory CustomerProfile.fromJson(Map<String, dynamic> json) => _$CustomerProfileFromJson(json);
}
