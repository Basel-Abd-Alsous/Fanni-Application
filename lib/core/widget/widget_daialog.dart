import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../l10n/app_localizations.dart';
import '../constant/app_image.dart';
import '../unit/app_color.dart';
import '../unit/app_text_style.dart';
import 'button/app_button.dart';

class WidgetDilog extends StatelessWidget {
  final bool? isError;
  final bool? isSupport;
  final String title;
  final List<Widget>? contents;
  final Widget? icon;
  final String description;
  final String? confirmText;
  final VoidCallback? onConfirm;
  final String? cancelText;
  final VoidCallback? onCancel;
  final Color? colorCancel;
  final Color? colorConfirm;

  const WidgetDilog({
    super.key,
    this.isError = false,
    this.isSupport = false,
    required this.title,
    required this.description,
    this.confirmText,
    this.onConfirm,
    this.cancelText,
    this.onCancel,
    this.contents,
    this.icon,
    this.colorCancel,
    this.colorConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (contents == null) ...[
            if (icon != null) icon!,
            if (icon == null)
              isError == true
                  ? const Icon(Icons.warning_amber_rounded, size: 60, color: AppColor.red)
                  : const Image(image: AssetImage(Assets.imageSuccess), width: 100, height: 100),
          ],
          const SizedBox(height: 10),
          Text(title, style: AppTextStyle.style16B.copyWith(color: Colors.black)),
          const SizedBox(height: 10),
          contents != null
              ? Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: contents!)
              : Text(description, style: AppTextStyle.style14.copyWith(color: Colors.black), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Expanded(
                child: AppButton.text(
                  onPressed: cancelText == null ? () => SmartDialog.dismiss() : onCancel,
                  color: colorCancel ?? AppColor.black,
                  text: cancelText ?? AppLocalizations.of(context)!.back,
                ),
              ),
              if (onConfirm != null) Expanded(child: AppButton.text(onPressed: onConfirm, color: colorConfirm ?? AppColor.black, text: confirmText!)),
            ],
          ),
        ],
      ),
    );
  }
}
