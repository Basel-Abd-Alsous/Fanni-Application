import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' show DioException;
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/constant/app_links.dart';
import '../../../../../core/errors/dio_exp.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/api_client.dart';
import '../../../../../core/services/api_services/dio_helper.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../../../../../core/services/hive_services/box_kes.dart';
import '../../../../../injection_container.dart';
import '../model/cliq_info_model.dart';
import '../model/packages_model.dart';

abstract class SubscriptionRepoistory {
  Future<Either<Failure, Result<List<Packages>>>> getPackages();
  Future<Either<Failure, Result<CliqInfo>>> getCliqInfo();
}

class SubscriptionRepoistoryImpl extends SubscriptionRepoistory {
  @override
  Future<Either<Failure, Result<CliqInfo>>> getCliqInfo() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final result = await client.getRequest(endpoint: AppLinks.cliqInfo, authorization: 'Bearer $token', lang: lang);
      CliqInfoModel? cliqInfoModel = CliqInfoModel.fromJson(result.response.data);
      return Right(Result.success(cliqInfoModel.data?.first));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<List<Packages>>>> getPackages() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final result = await client.getRequest(endpoint: AppLinks.packages, authorization: 'Bearer $token', lang: lang);
      PackagesModel? packagesModel = PackagesModel.fromJson(result.response.data);
      return Right(Result.success(packagesModel.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
