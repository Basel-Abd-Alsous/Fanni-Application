part of 'home_customer_cubit.dart';

@freezed
class HomeCustomerState with _$HomeCustomerState {
  const factory HomeCustomerState.initial() = _Initial;

  // Banners State
  const factory HomeCustomerState.loadingBanners() = _LoadingBanners;
  const factory HomeCustomerState.successBanners({required List<Banners> data}) = _SuccessBanners;
  const factory HomeCustomerState.errorBanners({required String message}) = _ErrorBanners;



}
