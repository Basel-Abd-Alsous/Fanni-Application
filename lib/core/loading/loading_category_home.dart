import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../../presentation/customer_flow/category/widgets/widget_category.dart';
import '../extension/gap.dart';
import '../unit/app_color.dart';
import '../unit/app_text_style.dart';

class LoadingCategoryHome extends StatelessWidget {
  const LoadingCategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.gap,
        Text(local.category, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
        10.gap,
        SingleChildScrollView(
          child: Row(children: List.generate(3, (e) => const Padding(padding: EdgeInsetsDirectional.only(end: 10), child: WidgetCategory(loading: true)))),
        ),
      ],
    );
  }
}
