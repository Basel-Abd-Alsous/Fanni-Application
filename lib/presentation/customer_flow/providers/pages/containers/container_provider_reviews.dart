import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extension/gap.dart';
import '../../../../../core/function/app_size.dart';
import '../../../../../core/loading/loading_rating_provider_details.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../provider_flow/reviews/widgets/widget_review_card.dart';
import '../../controller/merchants_cubit.dart';
import '../../domain/model/providers_details_model.dart';

class ContainerProviderReviews extends StatelessWidget {
  const ContainerProviderReviews({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<MerchantsCubit, MerchantsState>(
      builder: (context, state) {
        ProvidersDetailsModel? data = state.maybeWhen(orElse: () => null, successProviderDetails: (data) => data);
        bool? loading = state.maybeWhen(orElse: () => false, loadingProviderDetails: () => true);
        if ((data?.data?.data?.ratings ?? []).isEmpty) return const SizedBox();
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.gap,
            Text(local.reviews, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
            20.gap,
            loading == true
                ? const LoadingRatingProviderDetails()
                : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      (data?.data?.data?.ratings ?? []).length,
                      (value) => WidgetReviewsCard(
                        height: 200,
                        width: AppSize(context).width * 0.8,
                        userName: (data?.data?.data?.ratings ?? []).reversed.toList()[value].customer?.name ?? '- - - -',
                        userImage: (data?.data?.data?.ratings ?? []).reversed.toList()[value].customer?.profilePic ?? '- - - -',
                        reviewTime: (data?.data?.data?.ratings ?? []).reversed.toList()[value].createdAt ?? DateTime.now(),
                        rating: double.tryParse((data?.data?.data?.ratings ?? []).reversed.toList()[value].rate.toString()) ?? 0.0,
                        reviewText: (data?.data?.data?.ratings ?? []).reversed.toList()[value].notes ?? '',
                      ),
                    ),
                  ),
                ),
          ],
        );
      },
    );
  }
}
