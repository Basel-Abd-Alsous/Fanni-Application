import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/cities_model.dart';
import '../model/major_model.dart';
import '../model/params/provider_profile_param.dart';
import '../repoistory/profile_provider_repoistory.dart';

class ProfileProviderUsecase {
  final ProfileProviderRepoistory repoistory;
  ProfileProviderUsecase({required this.repoistory});

  Future<Either<Failure, Result<List<Cities>>>> getAllCities() async => await repoistory.getAllCities();
  Future<Either<Failure, Result<List<Major>>>> getAllMajor() async => await repoistory.getAllMajor();
  Future<Either<Failure, Unit>> updateProfile(ProviderProfileParam param) async => await repoistory.updateProfile(param);
  Future<Either<Failure, Result<String>>> uploadImage(File image) async => await repoistory.uploadImage(image);
}
