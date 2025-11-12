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
import '../model/providers_details_model.dart';
import '../model/providers_model.dart';

abstract class ProviderRepoistory {
  Future<Either<Failure, Result<ProvidersModel>>> getAllMerchants(String? search, int? catId, int? page);
  Future<Either<Failure, Result<ProvidersDetailsModel>>> getMerchantDetails(int id);
  Future<Either<Failure, Unit>> merchantInteraction(int id, String type, {int? merchantInteractionId});
}

class ProviderRepoistoryImpl extends ProviderRepoistory {
  @override
  Future<Either<Failure, Result<ProvidersModel>>> getAllMerchants(String? search, int? catId, int? page) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final queryParams = <String, String>{};
      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }
      if (catId != null && catId != 0) {
        queryParams['category_id'] = catId.toString();
      }
      if (page != null) {
        queryParams['page'] = page.toString();
      }
      final uri = Uri.parse(AppLinks.allProviders).replace(queryParameters: queryParams);
      final result = await client.getRequest(endpoint: uri.toString(), lang: lang);
      ProvidersModel? providersModel = ProvidersModel.fromJson(result.response.data);
      return Right(Result.success(providersModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<ProvidersDetailsModel>>> getMerchantDetails(int id) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.getRequest(endpoint: '${AppLinks.providerDetails}$id', lang: lang);
      ProvidersDetailsModel? providersDetailsModel = ProvidersDetailsModel.fromJson(result.response.data);
      return Right(Result.success(providersDetailsModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> merchantInteraction(int id, String type, {int? merchantInteractionId}) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final ApiClient client = ApiClient(DioProvider().dio);
      await client.postRequest(
        endpoint: AppLinks.providerInteraction,
        lang: lang,
        authorization: 'Bearer $token',
        body: {"merchant_id": id, "type": type, "merchant_interaction_id": merchantInteractionId},
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
