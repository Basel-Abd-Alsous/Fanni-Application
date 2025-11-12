import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

import '../../../core/services/hive_services/box_kes.dart';
import '../../../core/unit/app_color.dart';
import '../../../core/unit/app_text_style.dart';
import '../../../injection_container.dart';

class WidgetSettingCard extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;
  final bool? isLanguage;
  final bool? haveArrow;

  const WidgetSettingCard({super.key, required this.icon, required this.title, this.onTap, this.isLanguage = false, this.haveArrow = true});

  @override
  Widget build(BuildContext context) {
    final langCode = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(color: AppColor.white, border: Border.all(color: AppColor.border), borderRadius: BorderRadius.circular(10)),
        child: Row(
          spacing: 10,
          children: [
            SvgPicture.asset(icon, width: 25, color: AppColor.primaryColor),
            Text(title, style: AppTextStyle.style13B.copyWith(color: AppColor.black)),
            const Spacer(),
            if (isLanguage == true)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(border: Border.all(color: AppColor.border), color: AppColor.white),
                child: Text(langCode == 'ar' ? "English" : 'عربي', style: AppTextStyle.style12B.copyWith(color: AppColor.grey)),
              )
            else if (haveArrow == true)
              const Icon(Icons.arrow_forward_ios, color: AppColor.grey, size: 18),
          ],
        ),
      ),
    );
  }
}
