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
import '../model/param/login_param.dart';
import '../model/param/otp_param.dart';
import '../model/param/password_param.dart';
import '../model/param/register_param.dart';

abstract class AuthRepoistory {
  Future<Either<Failure, Result<String>>> login(LoginParam loginParam);
  Future<Either<Failure, Result<String>>> register(RegisterParam registerParam);
  Future<Either<Failure, Unit>> forget(String mobile);
  Future<Either<Failure, Unit>> verifyOTP(OTPParam otpParam);
  Future<Either<Failure, Unit>> resendOTP(String mobile);
  Future<Either<Failure, Unit>> updatePassword(PasswordParam passwordParam);
}

class AuthRepoistoryImpl extends AuthRepoistory {
  @override
  Future<Either<Failure, Result<String>>> login(LoginParam loginParam) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.postRequest(
        endpoint: userFlow == UserFlow.vendor ? AppLinks.loginProvider : AppLinks.loginCustomer,
        body: loginParam.toJson(),
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );
      return Right(Result.success(result.response.data['data']['access_token']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<String>>> register(RegisterParam registerParam) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.postRequest(
        endpoint: userFlow == UserFlow.customer ? AppLinks.registerCustomer : AppLinks.registerProvider,
        body: registerParam.toJson(),
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );
      return Right(Result.success(result.response.data['data']['access_token']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> forget(String mobile) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      await client.postRequest(
        endpoint: userFlow == UserFlow.vendor ? AppLinks.forgetProvider : AppLinks.forgetCustomer,
        body: {"mobile_number": mobile},
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyOTP(OTPParam otpParam) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      await client.postRequest(
        endpoint: userFlow == UserFlow.vendor ? AppLinks.verifyOtpProvider : AppLinks.verifyOtpCustomer,
        body: otpParam.toJson(),
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );

      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> resendOTP(String mobile) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      await client.postRequest(
        endpoint: userFlow == UserFlow.vendor ? AppLinks.resendOTPProvider : AppLinks.resendOTPCustomer,
        body: {"phone": mobile},
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePassword(PasswordParam passwordParam) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      await client.postRequest(
        endpoint: userFlow == UserFlow.vendor ? AppLinks.editPasswordProvider : AppLinks.editPasswordCustomer,
        body: passwordParam.toJson(),
        lang: lang,
        role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
