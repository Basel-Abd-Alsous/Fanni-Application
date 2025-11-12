import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_drop_down.dart';
import '../../../../core/widget/widget_text_field.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/auth_cubit.dart';

class ContainerVenderInfo extends StatelessWidget {
  const ContainerVenderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    Widget sectionTitle(String title) => Text(title, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor));
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: context.read<AuthCubit>().keyVendorInfo,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sectionTitle(local.major),
                5.gap,
                WidgetDropdownField(hintText: local.selectYourMajor, items: const [], onChanged: (value) {}),
                10.gap,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [sectionTitle(local.city), 3.gap, WidgetDropdownField(hintText: local.selectCity, items: const [], onChanged: (value) {})],
                      ),
                    ),
                    10.gap,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sectionTitle(local.inspectionFee),
                          3.gap,
                          WidgetTextField(
                            '20',
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [Text(local.currencyJOD, style: AppTextStyle.style14.copyWith(color: AppColor.grey))],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                10.gap,
                sectionTitle(local.photoOfWork),
                5.gap,
                WidgetTextField(local.selectPhotoOfWork, suffixIcon: const Icon(Icons.camera_alt_outlined, color: AppColor.grey)),
                10.gap,
                sectionTitle(local.about),
                5.gap,
                WidgetTextField(local.aboutYou, maxLines: 4),
              ],
            ),
          ),
        );
      },
    );
  }
}
