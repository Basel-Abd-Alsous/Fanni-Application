import 'dart:convert';

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
import '../model/customer_reviews_model.dart';
import '../model/params/customer_rate_param.dart';

abstract class CustomerReviewsRepoistory {
  Future<Either<Failure, Result<List<CustomerReviewsModel>>>> getAllReviews();
  Future<Either<Failure, Unit>> ratingMerchant(CustomerRateParam param);
}

class CustomerReviewsRepoistoryImpl extends CustomerReviewsRepoistory {
  @override
  Future<Either<Failure, Result<List<CustomerReviewsModel>>>> getAllReviews() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final result = await client.getRequest(endpoint: AppLinks.allCustomerRating, lang: lang, authorization: 'Bearer $token');
      List<CustomerReviewsModel> customerReviewsModel = customerReviewsModelFromJson(json.encode(result.response.data));
      return Right(Result.success(customerReviewsModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> ratingMerchant(CustomerRateParam param) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      await client.postRequest(endpoint: AppLinks.ratingMerchant, lang: lang, authorization: 'Bearer $token', body: param.toJson());
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
