import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../layout/domain/model/merchant_profile_model.dart';
import '../../layout/widget/widget_layout.dart';
import '../controller/reviews_provider_cubit.dart';
import 'containers/container_reviews.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<ReviewsProviderCubit>(),
      child: Scaffold(
        appBar: WidgetLayoutProvider.widgetLayoutAppbar(context, local.reviews),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BlocBuilder<ReviewsProviderCubit, ReviewsProviderState>(
            builder: (context, state) {
              return ValueListenableBuilder(
                valueListenable: sl<Box<MerchantProfile>>().listenable(),
                builder: (context, value, child) {
                  MerchantProfile? merchantProfile = value.get(BoxKeys.merchantData);
                  List<Rating> allReviews = merchantProfile?.ratings ?? [];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: AppTextStyle.style16B.copyWith(color: Colors.black, fontFamily: 'Jannalt'),
                          children: [
                            TextSpan(text: local.totalReviews),
                            TextSpan(text: '  (${allReviews.length})', style: AppTextStyle.style11B.copyWith(color: AppColor.primaryColor)),
                          ],
                        ),
                      ),
                      ContainerReviews(allRating: allReviews),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
