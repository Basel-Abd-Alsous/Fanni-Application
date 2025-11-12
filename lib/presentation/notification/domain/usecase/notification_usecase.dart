import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/notifications_model.dart';
import '../reoistroy/notification_repoistory.dart';

class NotificationUsecase {
  final NotificationRepoistory repoistory;
  NotificationUsecase({required this.repoistory});
  Future<Either<Failure, Result<List<Notifications>>>> call() async => await repoistory.getNotification();
}
