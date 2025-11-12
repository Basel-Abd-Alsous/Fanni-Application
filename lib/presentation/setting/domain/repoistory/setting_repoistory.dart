import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../../../../core/constant/app_links.dart';
import '../../../../core/errors/dio_exp.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/services/hive_services/user_flow.dart';
import '../../../../injection_container.dart';

abstract class SettingRepoistory {
  Future<Either<Failure, Unit>> updatePassword(String oldPassword, String newPassword);
  Future<Either<Failure, Unit>> updateMobile(String newMobile);
  Future<Either<Failure, Result<String>>> getContent(String type);
}

class SettingRepoistoryImpl implements SettingRepoistory {
  @override
  Future<Either<Failure, Unit>> updatePassword(String oldPassword, String newPassword) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      await client.postRequest(
        endpoint: AppLinks.updatePassword,
        authorization: 'Bearer $token',
        lang: lang,
        body: {"current_password": oldPassword, "new_password": newPassword},
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateMobile(String newMobile) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      await client.postRequest(
        endpoint: AppLinks.changeMobile,
        authorization: 'Bearer $token',
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
        lang: lang,
        body: {"mobile_number": newMobile},
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<String>>> getContent(String type) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final result = await client.getRequest(endpoint: AppLinks.content + type, authorization: 'Bearer $token', lang: lang);
      return Right(Result.success(result.response.data['data']['description']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
