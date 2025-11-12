import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../repoistory/home_provider_repoistory.dart';

class HomeProviderUsecase {
  final HomeProviderRepoistory repoistory;
  HomeProviderUsecase({required this.repoistory});

  Future<Either<Failure, Result<bool>>> getStatus() async => await repoistory.getStatus();
  Future<Either<Failure, Unit>> changeStatus() async => await repoistory.changeStatus();
}
