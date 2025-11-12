part of 'merchants_cubit.dart';

@freezed
class MerchantsState with _$MerchantsState {
  const factory MerchantsState.initial() = _Initial;

  // Providers State
  const factory MerchantsState.loadingProviders() = _LoadingProviders;
  const factory MerchantsState.emptyProviders() = _EmptyProviders;
  const factory MerchantsState.successProviders({required ProvidersModel data , @Default(false) bool? hasMore}) = _SuccessProviders;
  const factory MerchantsState.errorProviders({required String message}) = _ErrorProviders;

  // Provider Details State
  const factory MerchantsState.loadingProviderDetails() = _LoadingProviderDetails;
  const factory MerchantsState.successProviderDetails({required ProvidersDetailsModel data}) = _SuccessProviderDetails;
  const factory MerchantsState.errorProviderDetails({required String message}) = _ErrorProviderDetails;
}
