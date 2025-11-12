import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../repoistory/setting_repoistory.dart';

class SettingUsecase {
  final SettingRepoistory repoistory;
  SettingUsecase({required this.repoistory});

  Future<Either<Failure, Unit>> updatePassword(String oldPassword, String newPassword) async => await repoistory.updatePassword(oldPassword, newPassword);
  Future<Either<Failure, Unit>> updateMobile(String newMobile) async => await repoistory.updateMobile(newMobile);
  Future<Either<Failure, Result<String>>> getContent(String type) async => await repoistory.getContent(type);
}
