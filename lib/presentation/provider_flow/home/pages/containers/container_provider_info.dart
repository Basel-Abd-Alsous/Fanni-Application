import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constant/app_image.dart';
import '../../../../../core/extension/gap.dart';
import '../../../../../core/services/hive_services/box_kes.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/widget_cache_network_image.dart';
import '../../../../../injection_container.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../layout/domain/model/merchant_profile_model.dart';
import '../../controller/home_provider_cubit.dart';

class ContainerProviderInfo extends StatelessWidget {
  const ContainerProviderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final langCode = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang, defaultValue: 'ar');
    return BlocBuilder<HomeProviderCubit, HomeProviderState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: sl<Box<MerchantProfile>>().listenable(),
          builder: (context, value, child) {
            MerchantProfile? merchantProfile = value.get(BoxKeys.merchantData);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    const Icon(Icons.person, size: 30, color: Colors.grey),
                    Text('${local.welcome2} ${merchantProfile?.name ?? ''}', style: AppTextStyle.style12B),
                  ],
                ),
                Row(
                  spacing: 5,
                  children: [
                    const Icon(Icons.date_range, size: 30, color: Colors.grey),
                    Text(DateFormat('dd MMM, yyyy').format(DateTime.now()), style: AppTextStyle.style12B),
                  ],
                ),
                10.gap,
                Container(
                  decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.border)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 8,
                            children: [
                              Text(local.reviews, style: AppTextStyle.style18B),
                              Text(merchantProfile?.averageRating?.toStringAsFixed(1) ?? '0.0', style: AppTextStyle.style20B),
                              RatingBarIndicator(
                                rating: double.tryParse(merchantProfile?.averageRating.toString() ?? '0.0') ?? 0.0,
                                itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
                                itemSize: 20,
                                unratedColor: Colors.grey[300],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: langCode == 'ar' ? Alignment.centerLeft : Alignment.centerRight,
                          children: [
                            Align(
                              alignment: langCode == 'ar' ? Alignment.centerLeft : Alignment.centerRight,
                              child: Transform(
                                alignment: Alignment.center,
                                transform: langCode == 'ar' ? Matrix4.rotationY(3.14159) : Matrix4.identity(),
                                child: Image.asset(Assets.imageHomeProvider, fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000), color: AppColor.primaryColor),
                              child: WidgetCachNetworkImage(image: merchantProfile?.profilePic ?? '', radius: 1000, width: 90, hieght: 90),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                10.gap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 5,
                  children: [
                    InfoTile(flex: 3, icon: Icons.call, label: local.calls, count: merchantProfile?.callCount ?? 0),
                    InfoTile(flex: 3, icon: Icons.remove_red_eye, label: local.profileViews, count: merchantProfile?.viewCount ?? 0),
                    InfoTile(flex: 3, svg: Assets.iconWhatsapp, icon: Icons.safety_check, label: local.whatsApps, count: merchantProfile?.whatsappCount ?? 0),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String? svg;
  final String label;
  final int count;
  final int? flex;

  const InfoTile({super.key, required this.icon, required this.label, required this.count, this.svg, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
        decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.border)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 5,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [
                svg != null ? SvgPicture.asset(svg!, width: 20, color: AppColor.primaryColor) : Icon(icon, size: 20, color: Colors.redAccent),
                Text(label, style: AppTextStyle.style10B, overflow: TextOverflow.ellipsis),
              ],
            ),
            Text('$count', style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
          ],
        ),
      ),
    );
  }
}
