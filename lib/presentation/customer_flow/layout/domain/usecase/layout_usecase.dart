import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/customer_profile_model.dart';
import '../repoistory/layout_repoistory.dart';

class LayoutCustomerUsecase {
  final LayoutCustomerRepoistory layoutRepoistory;
  LayoutCustomerUsecase({required this.layoutRepoistory});

  Future<Either<Failure, Result<CustomerProfile>>> getProfile() async => await layoutRepoistory.getProfile();
}
