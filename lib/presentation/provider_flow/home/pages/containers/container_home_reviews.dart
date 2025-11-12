import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/extension/gap.dart';
import '../../../../../core/services/hive_services/box_kes.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../injection_container.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../layout/domain/model/merchant_profile_model.dart';
import '../../../reviews/widgets/widget_review_card.dart';
import '../../controller/home_provider_cubit.dart';

class ContainerHomeReviews extends StatelessWidget {
  const ContainerHomeReviews({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<HomeProviderCubit, HomeProviderState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: sl<Box<MerchantProfile>>().listenable(),
          builder: (context, value, child) {
            MerchantProfile? merchantProfile = value.get(BoxKeys.merchantData);
            List<Rating> allReviews = merchantProfile?.ratings ?? [];
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(local.reviews, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
                10.gap,
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => 5.gap,
                  itemCount: allReviews.length,
                  itemBuilder:
                      (context, index) => WidgetReviewsCard(
                        userName: allReviews[index].customer?.name ?? '',
                        userImage: allReviews[index].customer?.profilePic ?? '',
                        reviewTime: allReviews[index].createdAt ?? DateTime.now(),
                        rating: double.tryParse(allReviews[index].rate.toString()) ?? 0.0,
                        reviewText: allReviews[index].notes ?? '',
                      ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
