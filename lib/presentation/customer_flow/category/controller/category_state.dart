part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  // Category State
  const factory CategoryState.loadingCategory() = _LoadingCategory;
  const factory CategoryState.successCategory({required List<Major> data}) = _SuccessCategory;
  const factory CategoryState.emptyCategory() = _EmptyCategory;
  const factory CategoryState.errorCategory({required String message}) = _ErrorCategory;
}
