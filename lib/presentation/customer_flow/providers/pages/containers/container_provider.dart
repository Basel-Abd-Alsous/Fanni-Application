import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/extension/gap.dart';
import '../../../../../core/function/app_size.dart';
import '../../../../../core/router/router_key.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/widget_cache_network_image.dart';
import '../../../../../core/widget/widget_loading.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../controller/merchants_cubit.dart';
import '../../domain/model/providers_details_model.dart';

class ContainerProvider extends StatelessWidget {
  const ContainerProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<MerchantsCubit, MerchantsState>(
      builder: (context, state) {
        ProvidersDetailsModel? data = state.maybeWhen(orElse: () => null, successProviderDetails: (data) => data);
        bool? loading = state.maybeWhen(orElse: () => false, loadingProviderDetails: () => true);
        return SizedBox(
          height: 280,
          child: InkWell(
            onTap: () => context.push('${RouterKey.images}?title=${data?.data?.data?.name ?? ''}', extra: [data?.data?.data?.coverImage ?? '']),
            child: Stack(
              children: [
                loading == true
                    ? const WidgetLoading(width: double.infinity, height: 190)
                    : WidgetCachNetworkImage(hieght: 190, width: double.infinity, image: data?.data?.data?.coverImage ?? ''),
                Container(height: 190, color: AppColor.black.withOpacity(0.4)),
                Positioned(
                  top: 140,
                  right: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: AppSize(context).width * 0.95,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            loading == true
                                ? const WidgetLoading(width: 100, height: 100, radius: 1000)
                                : InkWell(
                                  onTap:
                                      () => context.push(
                                        '${RouterKey.images}?title=${data?.data?.data?.name ?? ''}',
                                        extra: [data?.data?.data?.profilePic ?? ''],
                                      ),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColor.primaryColor, width: 3)),
                                    child: WidgetCachNetworkImage(radius: 1000, image: data?.data?.data?.profilePic ?? ''),
                                  ),
                                ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              spacing: loading == true ? 10 : 0,
                              children: [
                                loading == true
                                    ? const WidgetLoading(width: 80)
                                    : Text(
                                      '(${data?.data?.data?.ratings?.length} ${local.reviews})',
                                      style: AppTextStyle.style12.copyWith(color: AppColor.grey),
                                    ),
                                loading == true
                                    ? const WidgetLoading(width: 140)
                                    : RatingBarIndicator(
                                      rating: double.tryParse(data?.data?.data?.averageRating.toString() ?? '0.0') ?? 0.0,
                                      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                                      itemSize: 25,
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      loading == true ? 10.gap : 5.gap,
                      loading == true
                          ? const WidgetLoading(width: 120)
                          : Text(data?.data?.data?.name ?? '- - - -', style: AppTextStyle.style18B.copyWith(color: AppColor.primaryColor)),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SafeArea(
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: IconButton.filled(onPressed: () => context.pop(), icon: Icon(Icons.arrow_back, color: AppColor.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
