import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../extension/gap.dart';
import '../../unit/app_color.dart';
import '../../unit/app_text_style.dart';
import '../../unit/border_radius.dart';
import 'button_constant.dart';

class AppButton extends StatelessWidget {
  final double height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final Widget Function(BuildContext context, bool isFocused, bool isHovered) builder;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? contentPadding;
  final bool isDestructive;
  final bool outlined; // <--- new parameter

  const AppButton({
    super.key,
    this.width,
    required this.height,
    required this.builder,
    this.onPressed,
    this.contentPadding,
    required this.isDestructive,
    this.color,
    this.borderRadius,
    this.outlined = false, // default false
  });

  /// Text Button
  factory AppButton.text({
    required String text,
    double height = AppButtonHeights.md,
    required void Function()? onPressed,
    Color? color,
    Color? fontColor,
    bool isDestructive = false,
    bool? loading = false,
    bool outlined = false, // <--- new
    Key? key,
    double? borderRadius,
    double? width,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? textStyle,
  }) {
    return AppButton(
      key: key,
      color: color,
      width: width,
      height: height,
      onPressed: loading == true ? () {} : onPressed,
      isDestructive: isDestructive,
      borderRadius: borderRadius,
      contentPadding: contentPadding,
      outlined: outlined,
      builder:
          (_, __, ___) =>
              loading == true
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(width: 25, height: 25, child: CircularProgressIndicator(color: AppColor.white))],
                  )
                  : Text(
                    text,
                    textAlign: TextAlign.center,
                    style: textStyle ?? AppTextStyle.style14B.copyWith(color: outlined ? color ?? AppColor.primaryColor : AppColor.white),
                  ),
    );
  }

  /// Icon Button
  factory AppButton.icon({
    required String text,
    IconData? leadingIconAssetName,
    IconData? trailingIconAssetName,
    double height = AppButtonHeights.lg,
    required void Function()? onPressed,
    Color? color,
    bool isDestructive = false,
    Key? key,
    double? width,
    bool outlined = false,
  }) {
    return AppButton(
      key: key,
      color: color,
      width: width,
      height: height,
      onPressed: onPressed,
      isDestructive: isDestructive,
      outlined: outlined,
      builder:
          (_, __, ___) => Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leadingIconAssetName != null)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      leadingIconAssetName,
                      color: outlined ? color ?? AppColor.primaryColor : AppColor.white,
                      size: AppButtonIconSize.fromButtonHeights(height),
                    ),
                    const SizedBox(width: 8.0),
                  ],
                ),
              Text(text, textAlign: TextAlign.center, style: AppTextStyle.style14B.copyWith(color: outlined ? color ?? AppColor.primaryColor : AppColor.white)),
              if (trailingIconAssetName != null)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    8.gap,
                    Icon(
                      trailingIconAssetName,
                      color: outlined ? color ?? AppColor.primaryColor : AppColor.white,
                      size: AppButtonIconSize.fromButtonHeights(height),
                    ),
                  ],
                ),
            ],
          ),
    );
  }

  /// Column Button
  factory AppButton.column({
    required String text,
    required IconData icon,
    double height = AppButtonHeights.lg,
    double? iconSize,
    required void Function()? onPressed,
    Color? color,
    bool isDestructive = false,
    Key? key,
    TextStyle? textStyle,
    EdgeInsetsGeometry? contentPadding,
    double? width,
    bool outlined = false,
  }) {
    return AppButton(
      key: key,
      color: color,
      width: width,
      height: height,
      onPressed: onPressed,
      isDestructive: isDestructive,
      contentPadding: contentPadding,
      outlined: outlined,
      builder:
          (_, __, ___) => Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: outlined ? color ?? AppColor.primaryColor : AppColor.white, size: iconSize ?? AppButtonIconSize.fromButtonHeights(height)),
              5.gap,
              Text(
                text,
                textAlign: TextAlign.center,
                style: textStyle ?? AppTextStyle.style14B.copyWith(color: outlined ? color ?? AppColor.primaryColor : AppColor.white),
              ),
            ],
          ),
    );
  }

  /// Icon Only Button
  factory AppButton.iconOnly({
    String? iconPath,
    IconData? iconAssetName,
    double height = AppButtonHeights.md,
    void Function()? onPressed,
    bool isDestructive = false,
    Color? color,
    Color? iconColor,
    Key? key,
    double? borderRadius,
    double? iconSize,
    EdgeInsetsGeometry? contentPadding,
    double? width,
    bool outlined = false,
  }) {
    return AppButton(
      key: key,
      width: width,
      height: height,
      onPressed: onPressed,
      color: color,
      borderRadius: borderRadius,
      isDestructive: isDestructive,
      outlined: outlined,
      contentPadding: contentPadding ?? AppButtonIconOnlyPadding.fromButtonHeights(height),
      builder:
          (_, __, ___) =>
              iconPath != ''
                  ? SvgPicture.asset(iconPath!)
                  : Icon(
                    iconAssetName,
                    color: outlined ? color ?? AppColor.primaryColor : iconColor ?? AppColor.white,
                    size: iconSize ?? AppButtonIconSize.fromButtonHeights(height),
                  ),
    );
  }

  @override
  Widget build(BuildContext context) {
    late Color primaryColor;
    late Color disabledColor;
    late Color hoverColor;
    late Color focusColor;

    if (!isDestructive) {
      primaryColor = color ?? AppColor.primaryColor;
      disabledColor = AppColor.primaryColor200;
      hoverColor = AppColor.primaryColor600;
      focusColor = AppColor.primaryColor;
    } else {
      primaryColor = color ?? AppColor.primaryColor;
      disabledColor = AppColor.red200;
      hoverColor = AppColor.red600;
      focusColor = AppColor.primaryColor;
    }

    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? AppBorderRadius.sm8),
        border: outlined ? Border.all(color: primaryColor, width: 1.5) : null, // <-- border for outlined
      ),
      child: Material(
        color: outlined ? AppColor.white : (onPressed != null ? primaryColor : disabledColor),
        borderRadius: BorderRadius.circular(borderRadius ?? AppBorderRadius.sm8),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius ?? AppBorderRadius.sm8),
          hoverColor: outlined ? AppColor.primaryColor : hoverColor,
          focusColor: focusColor,
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius ?? AppBorderRadius.sm8)),
            child: Padding(padding: contentPadding ?? AppButtonPadding.fromButtonHeights(height), child: builder(context, true, true)),
          ),
        ),
      ),
    );
  }
}
