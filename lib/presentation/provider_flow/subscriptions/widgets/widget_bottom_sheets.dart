import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/extension/gap.dart';
import '../../../../core/function/app_size.dart';
import '../../../../core/function/hex_color.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../domain/model/cliq_info_model.dart';

class WidgetBottomSheets {
  // Generic method to copy text to clipboard
  static void copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.copied)));
  }

  // Payment Methods Sheet
  static void showPaymentMethodSheet(BuildContext context, CliqInfo cliq) {
    final local = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      backgroundColor: HexColor.fromHex('F3F5FD'),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder:
          (context) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  Text(local.paymentsMethods, style: AppTextStyle.style16B),
                  10.gap,
                  _paymentMethodTile(
                    context,
                    iconPath: Assets.iconVisa,
                    title: local.creditCard,
                    onTap: () {
                      Navigator.pop(context);
                      showSubscriptionSubmittedSheet(context);
                    },
                  ),
                  _paymentMethodTile(
                    context,
                    iconPath: Assets.imageCliq,
                    title: local.cliq,
                    onTap: () {
                      Navigator.pop(context);
                      showCliQSubscriptionSheet(context, cliq);
                    },
                  ),
                ],
              ),
            ),
          ),
    );
  }

  // CliQ Subscription Sheet
  static void showCliQSubscriptionSheet(BuildContext context, CliqInfo cliq) {
    final local = AppLocalizations.of(context)!;

    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      backgroundColor: HexColor.fromHex('F3F5FD'),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder:
          (context) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.gap,
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.white, border: Border.all(color: AppColor.primaryColor)),
                    child: Image.asset(Assets.imageCliq, width: 100, height: 100),
                  ),
                  20.gap,
                  Text(local.cliqSubscription, style: AppTextStyle.style16B),
                  10.gap,
                  Text(local.fanniApplication, style: AppTextStyle.style13),
                  10.gap,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    decoration: BoxDecoration(border: Border.all(color: AppColor.border), borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(child: Text(cliq.clickName ?? '', style: AppTextStyle.style13B)),
                        InkWell(onTap: () => copyToClipboard(context, cliq.clickName ?? ''), child: Icon(Icons.copy, color: AppColor.primaryColor)),
                      ],
                    ),
                  ),
                  10.gap,
                  Text(local.depositEwallet, style: AppTextStyle.style13),
                  30.gap,
                  Center(
                    child: AppButton.text(
                      width: AppSize(context).width * 0.6,
                      text: local.copy,
                      onPressed: () => copyToClipboard(context, local.fanniApplication),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  // Subscription Submitted Sheet
  static void showSubscriptionSubmittedSheet(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      backgroundColor: HexColor.fromHex('F3F5FD'),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder:
          (context) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.gap,
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.primaryColor),
                    child: const Icon(Icons.check_circle_outline, color: Colors.white, size: 50),
                  ),
                  20.gap,
                  Text(local.subscriptionSubmitted, style: AppTextStyle.style16B),
                  30.gap,
                  Text(local.subscriptionThankYou, textAlign: TextAlign.center, style: AppTextStyle.style13),
                  30.gap,
                  Center(child: AppButton.text(width: AppSize(context).width * 0.6, text: local.ok, onPressed: () => context.go(RouterKey.layoutProvider))),
                ],
              ),
            ),
          ),
    );
  }

  // Reusable payment method tile
  static Widget _paymentMethodTile(BuildContext context, {required String iconPath, required String title, required VoidCallback onTap}) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(side: BorderSide(color: AppColor.border), borderRadius: BorderRadius.circular(10)),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: AppColor.primaryColor, size: 17),
      leading:
          iconPath.contains('icon')
              ? Padding(padding: const EdgeInsets.symmetric(horizontal: 11), child: SvgPicture.asset(iconPath, height: 24))
              : Image.asset(iconPath, height: 24),
      title: Text(title, style: AppTextStyle.style13B),
      onTap: onTap,
    );
  }
}
