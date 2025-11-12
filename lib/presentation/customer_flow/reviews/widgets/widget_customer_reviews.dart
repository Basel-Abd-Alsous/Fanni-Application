import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../../core/extension/gap.dart';
import '../../../../core/function/app_size.dart';
import '../../../../core/function/hex_color.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../core/widget/widget_cache_network_image.dart';
import '../../../../core/widget/widget_text_field.dart';
import '../../../../l10n/app_localizations.dart';
import '../controller/customer_reviews_cubit.dart';
import '../domain/model/customer_reviews_model.dart';

class WidgetCustomerReviews extends StatelessWidget {
  final CustomerReviewsModel review;
  const WidgetCustomerReviews({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.border)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundColor: AppColor.white, radius: 24, child: WidgetCachNetworkImage(image: review.profilePic ?? '', radius: 10000)),
              10.gap,
              Expanded(child: Text(review.merchantName ?? '- - - -', style: AppTextStyle.style14B)),
              Column(
                children: [
                  Text('${local.calledAt}', style: AppTextStyle.style11.copyWith(color: AppColor.primaryColor)),
                  Text(
                    DateFormat('HH:mm').format(review.interactionDate ?? DateTime.now()),
                    style: AppTextStyle.style11B.copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
            ],
          ),
          10.gap,
          WidgetChooseReview(
            title: local.dontAnswer,
            onTap: () => context.read<CustomerReviewsCubit>().merchantInteraction(context, review.merchantId ?? 0, '1', review.interactionId ?? 0),
          ),
          const Divider(),
          ValueListenableBuilder(
            valueListenable: context.read<CustomerReviewsCubit>().rate,
            builder:
                (context, rates, child) => WidgetChooseReview(
                  title: local.answeredNoJob,
                  onTap: () {
                    context.read<CustomerReviewsCubit>().merchantInteraction(context, review.merchantId ?? 0, '2', review.interactionId ?? 0).whenComplete(() {
                      _showReviewSheet(
                        context,
                        '2',
                        context.read<CustomerReviewsCubit>().note,
                        rates,
                        (r) => context.read<CustomerReviewsCubit>().changeRate(r),
                        () => context.read<CustomerReviewsCubit>().addReviews(1, review.merchantId ?? 0, review.interactionId ?? 0),
                      );
                    });
                  },
                ),
          ),
          const Divider(),
          ValueListenableBuilder(
            valueListenable: context.read<CustomerReviewsCubit>().rate,
            builder:
                (context, rates, child) => WidgetChooseReview(
                  title: local.jobCompleted,
                  onTap: () {
                    context.read<CustomerReviewsCubit>().merchantInteraction(context, review.merchantId ?? 0, '3', review.interactionId ?? 0).whenComplete(() {
                      _showReviewSheet(
                        context,
                        '3',
                        context.read<CustomerReviewsCubit>().note,
                        rates,
                        (r) => context.read<CustomerReviewsCubit>().changeRate(r),
                        () => context.read<CustomerReviewsCubit>().addReviews(2, review.merchantId ?? 0, review.interactionId ?? 0),
                      );
                    });
                  },
                ),
          ),
        ],
      ),
    );
  }

  void _showReviewSheet(
    BuildContext context,
    String type,
    final TextEditingController? note,
    final double? rate,
    final Function(double) onRatingUpdate,
    final VoidCallback? onPressed,
  ) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      isScrollControlled: true,
      backgroundColor: HexColor.fromHex('F3F5FD'),
      useSafeArea: true,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 10, left: 20, right: 20, top: 20),
          child: ReviewSheet(type: type, note: note, rate: rate, onRatingUpdate: onRatingUpdate, onPressed: onPressed),
        );
      },
    );
  }
}

class WidgetChooseReview extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const WidgetChooseReview({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: AppColor.white, shape: BoxShape.circle, border: Border.all(color: AppColor.primaryColor)),
            ),
            10.gap,
            Expanded(child: Text(title, style: AppTextStyle.style12B)),
            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppColor.primaryColor),
          ],
        ),
      ),
    );
  }
}

class ReviewSheet extends StatelessWidget {
  final String type;
  final TextEditingController? note;
  final double? rate;
  final Function(double) onRatingUpdate;
  final VoidCallback? onPressed;
  const ReviewSheet({super.key, required this.type, this.note, this.rate, required this.onRatingUpdate, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 10, left: 10, right: 10, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text(local.reviews, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            16.gap,
            Center(
              child: RatingBar.builder(
                initialRating: rate ?? 2,
                minRating: 1,
                itemCount: 5,
                itemSize: 40,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                onRatingUpdate: onRatingUpdate,
              ),
            ),
            if (type == '3') ...[
              25.gap,
              Row(
                spacing: 5,
                children: [
                  Text(local.comment, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
                  Text(local.optional, style: const TextStyle(color: Colors.grey)),
                ],
              ),
              8.gap,
              WidgetTextField(local.enterComments, controller: note, maxLines: 4),
            ],

            25.gap,
            Center(child: AppButton.text(width: AppSize(context).width * 0.8, text: local.submit, onPressed: onPressed)),
          ],
        ),
      ),
    );
  }
}
