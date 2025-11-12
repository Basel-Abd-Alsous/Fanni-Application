import 'package:flutter/material.dart';

import '../../../../../core/extension/gap.dart';
import '../../../layout/domain/model/merchant_profile_model.dart';
import '../../widgets/widget_review_card.dart';

class ContainerReviews extends StatelessWidget {
  final List<Rating> allRating;
  const ContainerReviews({super.key, required this.allRating});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => 5.gap,
        itemCount: allRating.length,
        itemBuilder:
            (context, index) => WidgetReviewsCard(
              userName: allRating[index].customer?.name ?? '',
              userImage: allRating[index].customer?.profilePic ?? '',
              reviewTime: allRating[index].createdAt ?? DateTime.now(),
              rating: double.tryParse(allRating[index].rate.toString()) ?? 0.0,
              reviewText: allRating[index].notes ?? '',
            ),
      ),
    );
  }
}
