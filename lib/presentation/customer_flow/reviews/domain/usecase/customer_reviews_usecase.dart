import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/customer_reviews_model.dart';
import '../model/params/customer_rate_param.dart';
import '../repoistory/customer_reviews_repoistory.dart';

class CustomerReviewsUsecase {
  final CustomerReviewsRepoistory repoistory;
  CustomerReviewsUsecase({required this.repoistory});

  Future<Either<Failure, Result<List<CustomerReviewsModel>>>> getAllReviews() async => await repoistory.getAllReviews();
  Future<Either<Failure, Unit>> ratingMerchant(CustomerRateParam param) async => await repoistory.ratingMerchant(param);
}
