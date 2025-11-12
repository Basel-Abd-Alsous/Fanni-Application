part of 'customer_reviews_cubit.dart';

@freezed
class CustomerReviewsState with _$CustomerReviewsState {
  const factory CustomerReviewsState.initial() = _Initial;

  // Customer Rating State
  const factory CustomerReviewsState.loadingAllRating() = _LoadingAllRating;
  const factory CustomerReviewsState.successAllRating({required List<CategoryReviewModel> data}) = _SuccessAllRating;
  const factory CustomerReviewsState.emptyAllRating() = _EmptyAllRating;
  const factory CustomerReviewsState.errorAllRating({required String message}) = _ErrorAllRating;
}

 
