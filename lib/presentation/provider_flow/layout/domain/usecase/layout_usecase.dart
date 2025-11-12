import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/merchant_profile_model.dart';
import '../repoistory/layout_repoistory.dart';

class LayoutProviderUsecase {
  final LayoutProviderRepoistory layoutRepoistory;
  LayoutProviderUsecase({required this.layoutRepoistory});

  Future<Either<Failure, Result<MerchantProfile>>> getProfile() async => await layoutRepoistory.getProfile();
}
