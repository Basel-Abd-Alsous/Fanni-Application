import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/context/global.dart';
import '../../../../core/extension/gap.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_empty.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../layout/widget/widget_layout.dart';
import '../controller/customer_reviews_cubit.dart';
import '../widgets/widget_customer_reviews.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<CustomerReviewsCubit>(),
      child: Scaffold(
        appBar: WidgetLayoutCustomer.widgetLayoutAppbar(context, local.reviews),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(local.reviewIntro, style: AppTextStyle.style12.copyWith(color: AppColor.grey)),
              20.gap,
              BlocBuilder<CustomerReviewsCubit, CustomerReviewsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loadingAllRating: () => const LinearProgressIndicator(),
                    successAllRating:
                        (data) => ListView.separated(
                          itemCount: data.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) => 5.gap,
                          itemBuilder:
                              (context, index) => Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Text(data[index].categoryName ?? '', style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
                                  ListView.separated(
                                    itemCount: data[index].customerReviews.length,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context, idx) => 5.gap,
                                    itemBuilder: (context, idx) => WidgetCustomerReviews(review: data[index].customerReviews[idx]),
                                  ),
                                ],
                              ),
                        ),
                    emptyAllRating: () => _widgetEmptyOrErrorReviews(),
                    errorAllRating:
                        (message) => _widgetEmptyOrErrorReviews(message: message, onPressed: () => context.read<CustomerReviewsCubit>().getAllReviews()),
                    orElse: () => _widgetEmptyOrErrorReviews(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  WidgetEmptyScreen _widgetEmptyOrErrorReviews({VoidCallback? onPressed, String? message}) {
    final local = AppLocalizations.of(GlobalContext.context)!;
    return WidgetEmptyScreen(
      title: local.noReviews,
      desc: message ?? local.noReviewsDesc,
      icon: SvgPicture.asset(Assets.iconRating, color: Colors.grey),
      onPressed: onPressed,
    );
  }
}
