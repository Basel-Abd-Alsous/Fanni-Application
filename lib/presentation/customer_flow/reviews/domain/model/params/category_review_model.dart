import '../customer_reviews_model.dart';

class CategoryReviewModel {
  final String? categoryName;
  final List<CustomerReviewsModel> customerReviews;

  CategoryReviewModel({required this.categoryName, required this.customerReviews});
}
