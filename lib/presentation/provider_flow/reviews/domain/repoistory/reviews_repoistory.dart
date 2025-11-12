abstract class ReviewsRepoistoryProvider {
  // Future<Either<Failure, Result<dynamic>>> getAllReviews();
}

class ReviewsRepoistoryProviderImpl extends ReviewsRepoistoryProvider {
  // @override
  // Future<Either<Failure, Result>> getAllReviews() async {
  //   try {
  //     UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
  //     final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
  //     final ApiClient client = ApiClient(DioProvider().dio);
  //     final result = await client.getRequest(
  //       endpoint: AppLinks.reviewsProvider,
  //       lang: lang,
  //       role: userFlow == UserFlow.customer ? "fanni_customer_app" : "fanni_merchant_app",
  //     );
  //     return Right(Result.success(result.response.data));
  //   } on DioException catch (e) {
  //     return Left(ServerFailure.fromDioError(e));
  //   } catch (e) {
  //     return Left(ServerFailure(message: e.toString()));
  //   }
  // }
}
