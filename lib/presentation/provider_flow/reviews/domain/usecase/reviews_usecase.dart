import '../repoistory/reviews_repoistory.dart';

class ReviewsUsecaseProvider {
  final ReviewsRepoistoryProvider repoistory;
  ReviewsUsecaseProvider({required this.repoistory});
  // Future<Either<Failure, Result<dynamic>>> getAllReviews() async => await repoistory.getAllReviews();
}
