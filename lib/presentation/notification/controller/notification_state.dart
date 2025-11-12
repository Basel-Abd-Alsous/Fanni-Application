part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  // Notification State
  const factory NotificationState.loadingNotifications() = _LoadingNotification;
  const factory NotificationState.successNotifications(List<Notifications> data) = _SuccessNotification;
  const factory NotificationState.emptyNotifications() = _EmptyNotification;
  const factory NotificationState.errorNotifications(String message) = _ErrorNotification;
}
