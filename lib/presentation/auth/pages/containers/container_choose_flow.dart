import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/function/app_size.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/services/hive_services/user_flow.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';

class ContainerChooseFlow extends StatelessWidget {
  const ContainerChooseFlow({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      height: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(local.welcome, style: AppTextStyle.style22B),
          5.gap,
          Text(local.chooseDescription, style: AppTextStyle.style14B.copyWith(color: AppColor.grey)),
          40.gap,
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton.text(
                    width: AppSize(context).width * 0.8,
                    text: local.customers,
                    onPressed: () {
                      sl<Box<UserFlow>>().put(BoxKeys.userFlow, UserFlow.customer);
                      context.push(RouterKey.auth);
                    },
                  ),
                  10.gap,
                  AppButton.text(
                    outlined: true,
                    width: AppSize(context).width * 0.8,
                    textStyle: AppTextStyle.style14B,
                    text: local.serviceProvider,
                    onPressed: () {
                      sl<Box<UserFlow>>().put(BoxKeys.userFlow, UserFlow.vendor);
                      context.push(RouterKey.auth);
                    },
                  ),
                  const Spacer(),
                  Text(local.copyright, style: AppTextStyle.style12.copyWith(color: AppColor.grey)),
                  20.gap,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
