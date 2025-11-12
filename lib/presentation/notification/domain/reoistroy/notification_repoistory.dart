import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/constant/app_links.dart';
import '../../../../core/errors/dio_exp.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/services/hive_services/user_flow.dart';
import '../../../../injection_container.dart';
import '../model/notifications_model.dart';

abstract class NotificationRepoistory {
  Future<Either<Failure, Result<List<Notifications>>>> getNotification();
}

class NotificationRepoistoryImpl implements NotificationRepoistory {
  @override
  Future<Either<Failure, Result<List<Notifications>>>> getNotification() async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final result = await client.getRequest(
        endpoint: AppLinks.notifications,
        authorization: 'Bearer $token',
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );
      NotificationsModel notificationsModel = NotificationsModel.fromJson(result.response.data);
      return Right(Result.success(notificationsModel.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
