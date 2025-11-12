import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/cliq_info_model.dart';
import '../model/packages_model.dart';
import '../repoistory/subscription_repoistory.dart';

class SubscriptionUsecase {
  final SubscriptionRepoistory repoistory;
  SubscriptionUsecase({required this.repoistory});

  Future<Either<Failure, Result<List<Packages>>>> getPackages() async => await repoistory.getPackages();
  Future<Either<Failure, Result<CliqInfo>>> getCliqInfo() async => await repoistory.getCliqInfo();
}
