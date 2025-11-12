// To parse this JSON data, do
//
//     final notificationsModel = notificationsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notifications_model.freezed.dart';
part 'notifications_model.g.dart';

NotificationsModel notificationsModelFromJson(String str) => NotificationsModel.fromJson(json.decode(str));

String notificationsModelToJson(NotificationsModel data) => json.encode(data.toJson());

@freezed
class NotificationsModel with _$NotificationsModel {
  const factory NotificationsModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<Notifications>? data,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) => _$NotificationsModelFromJson(json);
}

@freezed
class Notifications with _$Notifications {
  const factory Notifications({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "body") String? body,
    @JsonKey(name: "notification_icon") String? notificationIcon,
  }) = _Notifications;

  factory Notifications.fromJson(Map<String, dynamic> json) => _$NotificationsFromJson(json);
}
