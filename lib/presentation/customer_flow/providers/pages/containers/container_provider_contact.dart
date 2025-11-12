import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constant/app_image.dart';
import '../../../../../core/extension/gap.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../controller/merchants_cubit.dart';
import '../../domain/model/providers_details_model.dart';

class ContainerProviderContact extends StatelessWidget {
  const ContainerProviderContact({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<MerchantsCubit, MerchantsState>(
      builder: (context, state) {
        ProvidersDetailsModel? data = state.maybeWhen(orElse: () => null, successProviderDetails: (data) => data);
        bool? loading = state.maybeWhen(orElse: () => false, loadingProviderDetails: () => true);
        if (loading == true) return const SizedBox();
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            10.gap,
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5, offset: const Offset(0, 2))],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap:
                          () async =>
                              await context.read<MerchantsCubit>().merchantInteraction(data?.data?.data?.id ?? 0, 'call', data?.data?.data?.mobileNumber ?? ''),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5,
                          children: [
                            const Icon(Icons.phone, color: AppColor.green, size: 25),
                            Text(local.callNow, style: AppTextStyle.style13B.copyWith(color: AppColor.primaryColor)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(width: 3, height: 30, color: Colors.grey.shade300),
                  Expanded(
                    child: InkWell(
                      onTap:
                          () async => await context.read<MerchantsCubit>().merchantInteraction(
                            data?.data?.data?.id ?? 0,
                            'whatsapp',
                            data?.data?.data?.mobileNumber ?? '',
                          ),
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5,
                          children: [
                            SvgPicture.asset(Assets.iconWhatsapp, width: 25),
                            Text(local.whatsapp, style: AppTextStyle.style13B.copyWith(color: AppColor.primaryColor)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.gap,
          ],
        );
      },
    );
  }
}
