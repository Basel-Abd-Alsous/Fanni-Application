import 'package:flutter/material.dart';

import '../../presentation/provider_flow/reviews/widgets/widget_review_card.dart';
import '../function/app_size.dart';

class LoadingRatingProviderDetails extends StatelessWidget {
  const LoadingRatingProviderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: List.generate(4, (value) => WidgetReviewsCard(height: 200, width: AppSize(context).width * 0.8, loading: true))),
    );
  }
}
