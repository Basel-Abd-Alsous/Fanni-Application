import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../l10n/app_localizations.dart';
import '../domain/model/packages_model.dart';

class WidgetSubscriptionCard extends StatelessWidget {
  final Packages packages;
  final VoidCallback onTap;
  const WidgetSubscriptionCard({super.key, required this.packages, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: AppColor.white, border: Border.all(color: AppColor.border), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(packages.name ?? '', textAlign: TextAlign.start, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor)),
                Radio<bool>(value: true, groupValue: packages.isSelected, onChanged: (bool? value) => onTap(), activeColor: AppColor.primaryColor),
              ],
            ),
            Text('${packages.price ?? ''} ${local.currencyJOD}', textAlign: TextAlign.start, style: AppTextStyle.style14B.copyWith(color: AppColor.black)),
            Html(
              data: packages.description ?? '',
              style: {
                "p.fancy": Style(
                  textAlign: TextAlign.center,
                  padding: HtmlPaddings.zero,
                  backgroundColor: Colors.grey,
                  margin: Margins(top: Margin.zero(), bottom: Margin.zero(), left: Margin.auto(), right: Margin.auto()),
                ),
              },
            ),
            Html(
              data: packages.features ?? '',
              style: {
                "p.fancy": Style(
                  textAlign: TextAlign.center,
                  padding: HtmlPaddings.zero,
                  backgroundColor: Colors.grey,
                  margin: Margins(top: Margin.zero(), bottom: Margin.zero(), left: Margin.auto(), right: Margin.auto()),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
