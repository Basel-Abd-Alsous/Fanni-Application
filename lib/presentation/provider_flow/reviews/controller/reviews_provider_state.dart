part of 'reviews_provider_cubit.dart';

@freezed
class ReviewsProviderState with _$ReviewsProviderState {
  const factory ReviewsProviderState.initial() = _Initial;

  // Reviews Provider State
  const factory ReviewsProviderState.loadingGetReviewsProvider() = _LoadingGetReviewsProvider;
  const factory ReviewsProviderState.emptyGetReviewsProvider() = _EmptyGetReviewsProvider;
  const factory ReviewsProviderState.successGetReviewsProvider({required dynamic data}) = _SuccessGetReviewsProvider;
  const factory ReviewsProviderState.errorGetReviewsProvider({required String message}) = _ErrorGetReviewsProvider;
}
