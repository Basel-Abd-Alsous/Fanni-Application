import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/extension/gap.dart';
import '../../../../../core/router/router_key.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/widget_cache_network_image.dart';
import '../../../../../core/widget/widget_loading.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../controller/merchants_cubit.dart';
import '../../domain/model/providers_details_model.dart';

class ContainerProviderPhotos extends StatelessWidget {
  const ContainerProviderPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<MerchantsCubit, MerchantsState>(
      builder: (context, state) {
        ProvidersDetailsModel? data = state.maybeWhen(orElse: () => null, successProviderDetails: (data) => data);
        bool? loading = state.maybeWhen(orElse: () => false, loadingProviderDetails: () => true);
        final images = data?.data?.data?.images ?? [];
        if (images.isEmpty) return const SizedBox();
        final displayImages = images.length > 9 ? images.sublist(0, 9) : images;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.gap,
            Text('${local.photoOfWork} (${images.length})', style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
            20.gap,
            loading == true
                ? GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
                  itemBuilder: (context, index) => const WidgetLoading(width: 110, height: 110, radius: 10),
                )
                : Column(
                  children: [
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: displayImages.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
                      itemBuilder:
                          (context, index) => InkWell(
                            onTap: () => context.push('${RouterKey.images}?title=${local.photoOfWork}', extra: images.map((image) => image.url ?? '').toList()),
                            child: WidgetCachNetworkImage(image: displayImages[index].url ?? '', width: 110, hieght: 110, radius: 10),
                          ),
                    ),
                    if (images.length > 10) ...[
                      20.gap,
                      Row(
                        children: [
                          Expanded(
                            child: AppButton.text(
                              text: local.seeAll,
                              onPressed:
                                  () => context.push('${RouterKey.images}?title=${local.photoOfWork}', extra: images.map((image) => image.url ?? '').toList()),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
          ],
        );
      },
    );
  }
}
