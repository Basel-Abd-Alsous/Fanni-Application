import 'package:flutter/material.dart';
import '../unit/app_color.dart';
import '../unit/app_text_style.dart';
import 'field_loading.dart';

class WidgetDropdownField<T> extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final double? radius;
  final bool? haveBorder;
  final InputBorder? border;
  final EdgeInsetsGeometry? padding;
  final bool? readOnly;
  final bool? loading;
  final T? value;
  final Function(T?)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final Function(T?)? validator;

  const WidgetDropdownField({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.hintText,
    this.errorText,
    this.textStyle,
    this.hintStyle,
    this.loading = false,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.radius,
    this.haveBorder,
    this.border,
    this.padding,
    this.readOnly,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return loading == true
        ? const FieldLoading()
        : DropdownButtonFormField<T>(
          value: value,
          items: items,
          onChanged: readOnly == true ? null : onChanged,
          validator: validator != null ? (val) => validator!(val) : null,
          style: textStyle ?? AppTextStyle.style14.copyWith(color: AppColor.black),
          decoration: InputDecoration(
            errorText: errorText,
            counter: const SizedBox(),
            contentPadding: padding ?? const EdgeInsets.all(7),
            fillColor: fillColor ?? AppColor.white,
            filled: true,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: hintStyle ?? AppTextStyle.style14B.copyWith(fontFamily: 'Jannalt'),
            suffixIcon: suffixIcon ?? const Icon(Icons.arrow_drop_down),
            border:
                border ??
                (haveBorder == false
                    ? InputBorder.none
                    : OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(radius ?? 7),
                    )),
            focusedBorder:
                border ??
                OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(color: haveBorder == null ? Theme.of(context).colorScheme.primary : Colors.transparent),
                  borderRadius: BorderRadius.circular(radius ?? 7),
                ),
            enabledBorder:
                border ??
                OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(color: haveBorder == null ? Theme.of(context).colorScheme.primary : Colors.transparent),
                  borderRadius: BorderRadius.circular(radius ?? 7),
                ),
            disabledBorder:
                border ??
                OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(color: haveBorder == null ? Theme.of(context).colorScheme.primary : Colors.transparent),
                  borderRadius: BorderRadius.circular(radius ?? 7),
                ),
          ),
        );
  }
}
