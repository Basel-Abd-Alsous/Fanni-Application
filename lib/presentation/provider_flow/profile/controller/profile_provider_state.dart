part of 'profile_provider_cubit.dart';

@freezed
class ProfileProviderState with _$ProfileProviderState {
  const factory ProfileProviderState.initial() = _Initial;

  // Cities State
  const factory ProfileProviderState.loadingCities() = _LoadingCities;
  const factory ProfileProviderState.successCities({required List<Cities> data}) = _SuccessCities;
  const factory ProfileProviderState.errorCities({required String message}) = _ErrorCities;

  // Major State
  const factory ProfileProviderState.loadingMajor() = _LoadingMajor;
  const factory ProfileProviderState.successMajor({required List<Major> data}) = _SuccessMajor;
  const factory ProfileProviderState.errorMajor({required String message}) = _ErrorMajor;

  // Update Profile State
  const factory ProfileProviderState.loadingUpdateProfile() = _LoadingUpdateProfile;
  const factory ProfileProviderState.successUpdateProfile() = _SuccessUpdateProfile;
  const factory ProfileProviderState.errorUpdateProfile({required String message}) = _ErrorUpdateProfile;
}
