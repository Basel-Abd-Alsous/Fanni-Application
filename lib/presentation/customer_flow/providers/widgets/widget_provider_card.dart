import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_cache_network_image.dart';
import '../../../../core/widget/widget_loading.dart';
import '../../../../l10n/app_localizations.dart';
import '../domain/model/providers_model.dart';

class WidgetProviderCard extends StatelessWidget {
  final Providers? merchant;
  final bool? loading;
  const WidgetProviderCard({super.key, this.merchant, this.loading = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return InkWell(
      onTap: () => context.push('${RouterKey.providersDetails}?id=${merchant?.id}'),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.15), blurRadius: 6, offset: const Offset(0, 3))],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 5,
              children: [
                loading == true
                    ? const WidgetLoading(height: 40, width: 40, radius: 1000)
                    : Container(
                      height: 40,
                      width: 40,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: WidgetCachNetworkImage(image: merchant?.profilePic ?? ''),
                    ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: loading == true ? 3 : 0,
                    children: [
                      loading == true
                          ? const WidgetLoading(width: 40)
                          : Text(merchant?.name ?? '- - - -', style: AppTextStyle.style12B, maxLines: 1, overflow: TextOverflow.ellipsis),
                      loading == true
                          ? const WidgetLoading(width: 60)
                          : RatingBarIndicator(
                            rating: double.tryParse(merchant?.averageRating.toString() ?? '0.0') ?? 0.0,
                            itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                            itemSize: 18,
                          ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: loading == true ? 3 : 0,
                    children: [
                      Text(local.city, style: AppTextStyle.style12B.copyWith(color: AppColor.primaryColor)),
                      loading == true
                          ? const WidgetLoading(width: 40)
                          : Text(merchant?.cityName ?? '- - - -', maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTextStyle.style12),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: loading == true ? 3 : 0,
                  children: [
                    Text(local.major, style: AppTextStyle.style12B.copyWith(color: AppColor.primaryColor)),
                    loading == true
                        ? const WidgetLoading(width: 60)
                        : Text(merchant?.categoryName ?? '- - - -', maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTextStyle.style12),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: loading == true ? 3 : 0,
                  children: [
                    Text(local.inspectionFee, style: AppTextStyle.style12B.copyWith(color: AppColor.primaryColor)),
                    loading == true
                        ? const WidgetLoading(width: 60)
                        : Text('${merchant?.inspectionFee ?? '0.0'} ${local.currencyJOD}', style: AppTextStyle.style12),
                  ],
                ),
                if (loading == false) Icon(Icons.arrow_forward_ios_rounded, color: AppColor.primaryColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
