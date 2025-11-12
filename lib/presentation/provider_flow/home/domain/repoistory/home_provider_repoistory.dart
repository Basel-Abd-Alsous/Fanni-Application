import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/constant/app_links.dart';
import '../../../../../core/errors/dio_exp.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/api_client.dart';
import '../../../../../core/services/api_services/dio_helper.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../../../../../core/services/hive_services/box_kes.dart';
import '../../../../../injection_container.dart';

abstract class HomeProviderRepoistory {
  Future<Either<Failure, Result<bool>>> getStatus();
  Future<Either<Failure, Unit>> changeStatus();
}

class HomeProviderRepoistoryImpl implements HomeProviderRepoistory {
  @override
  Future<Either<Failure, Result<bool>>> getStatus() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final result = await client.getRequest(endpoint: AppLinks.status, authorization: 'Bearer $token', lang: lang);
      return Right(Result.success(result.response.data['status'] == 'inactive' ? false : true));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> changeStatus() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      await client.putRequest(endpoint: AppLinks.changeStatus, authorization: 'Bearer $token', lang: lang, body: {});
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
