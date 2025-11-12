import 'package:flutter/material.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/gap.dart';
import '../../../core/unit/app_color.dart';
import '../../../core/unit/app_text_style.dart';

class WidgetAuthBg extends StatelessWidget {
  const WidgetAuthBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(Assets.imageLogoWithoutBg, width: double.infinity, height: 80),
        40.gap,
        Text('Fanni Application', style: AppTextStyle.style24B.copyWith(color: AppColor.white)),
      ],
    );
  }
}
