import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/model/notifications_model.dart';
import '../domain/usecase/notification_usecase.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationUsecase notificaioUsecase;
  NotificationCubit({required this.notificaioUsecase}) : super(const NotificationState.initial()) {
    getNotifications();
  }

  Future<void> getNotifications() async {
    emit(const _LoadingNotification());
    try {
      final result = await notificaioUsecase();
      result.fold((failure) => emit(_ErrorNotification(failure.message)), (success) {
        if (success.data?.isEmpty ?? true) {
          emit(const _EmptyNotification());
        } else {
          emit(_SuccessNotification(success.data ?? []));
        }
      });
    } catch (e) {
      emit(_ErrorNotification(e.toString()));
    }
  }
}
