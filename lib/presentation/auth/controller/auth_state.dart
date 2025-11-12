part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  // Login State
  const factory AuthState.loadingLogin() = _LoadingLogin;
  const factory AuthState.successLogin() = _SuccessLogin;
  const factory AuthState.errorLogin({required String message}) = _ErrorLogin;

  // Register State
  const factory AuthState.loadingRegister() = _LoadingRegister;
  const factory AuthState.successRegister() = _SuccessRegister;
  const factory AuthState.errorRegister({required String message}) = _ErrorRegister;

  // Forget State
  const factory AuthState.loadingForget() = _LoadingForget;
  const factory AuthState.successForget() = _SuccessForget;
  const factory AuthState.errorForget({required String message}) = _ErrorForget;

  // Verify State
  const factory AuthState.loadingVerify() = _LoadingVerify;
  const factory AuthState.successVerify() = _SuccessVerify;
  const factory AuthState.errorVerify({required String message}) = _ErrorVerify;

  // Resend OTP State
  const factory AuthState.loadingResendOTP() = _LoadingResendOTP;
  const factory AuthState.successResendOTP() = _SuccessResendOTP;
  const factory AuthState.errorResendOTP({required String message}) = _ErrorResendOTP;

  // Update Password State
  const factory AuthState.loadingUpdatePassword() = _LoadingUpdatePassword;
  const factory AuthState.successUpdatePassword() = _SuccessUpdatePassword;
  const factory AuthState.errorUpdatePassword({required String message}) = _ErrorUpdatePassword;
}
