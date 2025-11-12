// To parse this JSON data, do
//
//     final citiesModel = citiesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cities_model.freezed.dart';
part 'cities_model.g.dart';

CitiesModel citiesModelFromJson(String str) => CitiesModel.fromJson(json.decode(str));

String citiesModelToJson(CitiesModel data) => json.encode(data.toJson());

@freezed
class CitiesModel with _$CitiesModel {
  const factory CitiesModel({@JsonKey(name: "success") bool? success, @JsonKey(name: "message") String? message, @JsonKey(name: "data") List<Cities>? data}) =
      _CitiesModel;

  factory CitiesModel.fromJson(Map<String, dynamic> json) => _$CitiesModelFromJson(json);
}

@freezed
class Cities with _$Cities {
  const factory Cities({@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name}) = _Cities;

  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);
}
