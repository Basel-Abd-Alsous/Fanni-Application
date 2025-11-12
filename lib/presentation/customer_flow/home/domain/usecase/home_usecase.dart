import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/api_services/result_model.dart';
import '../model/banners_model.dart';
import '../repoistory/home_repoistory.dart';

class HomeUsecase {
  final HomeRepoistory repoistory;
  HomeUsecase({required this.repoistory});

  Future<Either<Failure, Result<List<Banners>>>> getBanners() async => await repoistory.getBanners();
}
