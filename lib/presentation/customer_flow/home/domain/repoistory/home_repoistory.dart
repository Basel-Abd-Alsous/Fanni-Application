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
import '../model/banners_model.dart';

abstract class HomeRepoistory {
  Future<Either<Failure, Result<List<Banners>>>> getBanners();
}

class HomeRepoistoryImpl extends HomeRepoistory {
  @override
  Future<Either<Failure, Result<List<Banners>>>> getBanners() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.getRequest(endpoint: AppLinks.banners, lang: lang);
      BannersModel? bannersModel = BannersModel.fromJson(result.response.data);
      return Right(Result.success(bannersModel.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
