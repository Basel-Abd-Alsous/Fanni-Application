import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/providers_details_model.dart';
import '../model/providers_model.dart';
import '../repoistory/provider_repoistory.dart';

class ProviderUsecase {
  final ProviderRepoistory repoistory;
  ProviderUsecase({required this.repoistory});

  Future<Either<Failure, Result<ProvidersModel>>> getAllMerchants(String? search, int? catId, int? page) async =>
      await repoistory.getAllMerchants(search, catId, page);
  Future<Either<Failure, Result<ProvidersDetailsModel>>> getMerchantDetails(int id) async => await repoistory.getMerchantDetails(id);
  Future<Either<Failure, Unit>> merchantInteraction(int id, String type, {int? merchantInteractionId}) async =>
      await repoistory.merchantInteraction(id, type, merchantInteractionId: merchantInteractionId);
}
