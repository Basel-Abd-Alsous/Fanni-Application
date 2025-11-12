// To parse this JSON data, do
//
//     final customerReviewsModel = customerReviewsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_reviews_model.freezed.dart';
part 'customer_reviews_model.g.dart';

List<CustomerReviewsModel> customerReviewsModelFromJson(String str) =>
    List<CustomerReviewsModel>.from(json.decode(str).map((x) => CustomerReviewsModel.fromJson(x)));

String customerReviewsModelToJson(List<CustomerReviewsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CustomerReviewsModel with _$CustomerReviewsModel {
  const factory CustomerReviewsModel({
    @JsonKey(name: "merchant_id") int? merchantId,
    @JsonKey(name: "merchant_name") String? merchantName,
    @JsonKey(name: "merchant_category_id") dynamic merchantCategoryId,
    @JsonKey(name: "merchant_category_name") String? merchantCategoryName,
    @JsonKey(name: "profile_pic") String? profilePic,
    @JsonKey(name: "interaction_id") int? interactionId,
    @JsonKey(name: "interaction_date") DateTime? interactionDate,
  }) = _CustomerReviewsModel;

  factory CustomerReviewsModel.fromJson(Map<String, dynamic> json) => _$CustomerReviewsModelFromJson(json);
}
