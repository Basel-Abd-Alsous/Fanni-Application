part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = _Initial;

  // Update Mobile State
  const factory SettingState.loadingMobile() = _LoadingMobile;
  const factory SettingState.successMobile() = _SuccessMobile;
  const factory SettingState.errorMobile({required String message}) = _ErrorMobile;

  // Update Password State
  const factory SettingState.loadingPassword() = _LoadingPassword;
  const factory SettingState.successPassword() = _SuccessPassword;
  const factory SettingState.errorPassword({required String message}) = _ErrorPassword;
}
