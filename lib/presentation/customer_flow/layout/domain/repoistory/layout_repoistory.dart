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
import '../model/customer_profile_model.dart';

abstract class LayoutCustomerRepoistory {
  Future<Either<Failure, Result<CustomerProfile>>> getProfile();
}

class LayoutCustomerRepoistoryImpl implements LayoutCustomerRepoistory {
  @override
  Future<Either<Failure, Result<CustomerProfile>>> getProfile() async {
    try {
      final ApiClient client = ApiClient(DioProvider().dio);
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final profileResponse = await client.getRequest(endpoint: AppLinks.customerProfile, authorization: 'Bearer $token');
      CustomerProfileModel? customerProfileModel = CustomerProfileModel.fromJson(profileResponse.response.data);
      return Right(Result.success(customerProfileModel.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
