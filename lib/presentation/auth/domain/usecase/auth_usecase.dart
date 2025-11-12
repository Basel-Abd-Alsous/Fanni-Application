import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/param/login_param.dart';
import '../model/param/otp_param.dart';
import '../model/param/password_param.dart';
import '../model/param/register_param.dart';
import '../reoistory/auth_repoistory.dart';

class AuthUsecase {
  final AuthRepoistory authRepoistory;
  AuthUsecase({required this.authRepoistory});

  Future<Either<Failure, Result<String>>> login(LoginParam loginParam) async => await authRepoistory.login(loginParam);
  Future<Either<Failure, Result<String>>> register(RegisterParam registerParam) async => await authRepoistory.register(registerParam);
  Future<Either<Failure, Unit>> forget(String mobile) async => await authRepoistory.forget(mobile);
  Future<Either<Failure, Unit>> verifyOtp(OTPParam otpParam) async => await authRepoistory.verifyOTP(otpParam);
  Future<Either<Failure, Unit>> resend(String mobile) async => await authRepoistory.resendOTP(mobile);
  Future<Either<Failure, Unit>> updatePassword(PasswordParam passwordParam) async => await authRepoistory.updatePassword(passwordParam);
}
