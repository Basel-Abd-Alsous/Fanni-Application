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
import '../model/merchant_profile_model.dart';

abstract class LayoutProviderRepoistory {
  Future<Either<Failure, Result<MerchantProfile>>> getProfile();
}

class LayoutProviderRepoistoryImpl implements LayoutProviderRepoistory {
  @override
  Future<Either<Failure, Result<MerchantProfile>>> getProfile() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final profileResponse = await client.getRequest(endpoint: AppLinks.providerProfile, authorization: 'Bearer $token', lang: lang);
      MerchantProfileModel? merchantProfile = MerchantProfileModel.fromJson(profileResponse.response.data);
      return Right(Result.success(merchantProfile.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
