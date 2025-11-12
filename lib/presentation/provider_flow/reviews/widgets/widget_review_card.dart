import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jiffy/jiffy.dart';
import '../../../../core/extension/gap.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_cache_network_image.dart';
import '../../../../core/widget/widget_loading.dart';
import '../../../../l10n/app_localizations.dart';

class WidgetReviewsCard extends StatelessWidget {
  final String? userName;
  final String? userImage;
  final DateTime? reviewTime;
  final double? rating;
  final double? height;
  final double? width;
  final String? reviewText;
  final bool? loading;

  const WidgetReviewsCard({
    super.key,
    this.userName,
    this.userImage,
    this.reviewTime,
    this.rating,
    this.reviewText,
    this.height,
    this.width,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    Jiffy.setLocale(AppLocalizations.of(context)!.localeName);
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(side: BorderSide(color: AppColor.border), borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row with avatar + name + time
              Row(
                children: [
                  loading == true
                      ? const WidgetLoading(radius: 1000, width: 50, height: 50)
                      : CircleAvatar(radius: 25, child: WidgetCachNetworkImage(image: userImage ?? '- - - -', radius: 100)),
                  10.gap,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        loading == true ? const WidgetLoading(width: 80) : Text(userName ?? '- - - -', style: AppTextStyle.style13B),
                        5.gap,
                        loading == true
                            ? const WidgetLoading(width: 50)
                            : Text(
                              Jiffy.parseFromDateTime((reviewTime?.toUtc() ?? DateTime.now()).add(const Duration(hours: 3))).fromNow(),
                              style: AppTextStyle.style11.copyWith(color: AppColor.grey),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
              10.gap,
              // Rating row
              Row(
                children: [
                  loading == true ? const WidgetLoading(width: 20) : Text(rating?.toStringAsFixed(1) ?? '-', style: AppTextStyle.style13B),
                  const SizedBox(width: 6),
                  loading == true
                      ? const WidgetLoading(width: 80)
                      : RatingBarIndicator(
                        rating: rating ?? 0.0,
                        itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
                        itemSize: 20,
                        unratedColor: Colors.grey,
                      ),
                ],
              ),
              10.gap,
              // Review text
              loading == true
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [WidgetLoading(width: double.infinity), WidgetLoading(width: double.infinity), WidgetLoading(width: 80)],
                  )
                  : Text(reviewText ?? '- - - -', style: AppTextStyle.style12),
            ],
          ),
        ),
      ),
    );
  }
}
