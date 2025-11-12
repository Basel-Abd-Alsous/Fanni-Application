import 'dart:io';

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
import '../model/cities_model.dart';
import '../model/major_model.dart';
import '../model/params/provider_profile_param.dart';

abstract class ProfileProviderRepoistory {
  Future<Either<Failure, Result<List<Cities>>>> getAllCities();
  Future<Either<Failure, Result<List<Major>>>> getAllMajor();
  Future<Either<Failure, Unit>> updateProfile(ProviderProfileParam param);
  Future<Either<Failure, Result<String>>> uploadImage(File image);
}

class ProfileProviderRepoistoryImpl extends ProfileProviderRepoistory {
  @override
  Future<Either<Failure, Result<List<Cities>>>> getAllCities() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.getRequest(endpoint: AppLinks.city, lang: lang);
      CitiesModel? citiesModel = CitiesModel.fromJson(result.response.data);
      return Right(Result.success(citiesModel.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<List<Major>>>> getAllMajor() async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.getRequest(endpoint: AppLinks.categories, lang: lang);
      MajorModel? majorModel = MajorModel.fromJson(result.response.data);
      return Right(Result.success(majorModel.data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProfile(ProviderProfileParam param) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      String? token = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken);
      final ApiClient client = ApiClient(DioProvider().dio);
      await client.postRequest(endpoint: AppLinks.updateProvicerProfile, authorization: 'Bearer $token', body: param.toJson(), lang: lang);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<String>>> uploadImage(File image) async {
    try {
      final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
      final ApiClient client = ApiClient(DioProvider().dio);
      final result = await client.uploadFile(endpoint: AppLinks.uploadImageProvider, file: image, lang: lang);
      return Right(Result.success(result.response.data['url']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
