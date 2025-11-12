import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/function/app_size.dart';
import '../../../../core/mixin/validation_mixin.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../core/widget/widget_text_field.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/auth_cubit.dart';

class ContainerUpdate extends StatelessWidget with FormValidationMixin {
  final String mobile;
  ContainerUpdate({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<AuthCubit, AuthState>(
      listener: _listener,
      builder: (context, state) {
        bool? isLoading = state.maybeWhen(orElse: () => false, loadingUpdatePassword: () => true);
        return Container(
          width: double.infinity,
          height: 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
          child: Form(
            key: context.read<AuthCubit>().keyUpdate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(local.forgetPassword, style: AppTextStyle.style22B),
                5.gap,
                Text(local.enterYourNewPassword, style: AppTextStyle.style13.copyWith(color: AppColor.grey)),
                25.gap,
                ValueListenableBuilder(
                  valueListenable: context.read<AuthCubit>().showPassword,
                  builder:
                      (context, value, child) => WidgetTextField(
                        local.newPassword,
                        obscureText: value,
                        controller: context.read<AuthCubit>().newPassword,
                        validator: (value) => validatePassword(context, value),
                        prefixIcon: const Icon(Icons.lock_open),
                        suffixIcon: IconButton(
                          onPressed: () => context.read<AuthCubit>().changeVisablePassword(),
                          icon: Icon(value == true ? Icons.visibility_off : Icons.visibility_sharp),
                        ),
                      ),
                ),
                25.gap,
                Center(
                  child: AppButton.text(
                    width: AppSize(context).width * 0.8,
                    text: local.update,
                    loading: isLoading,
                    onPressed: () => context.read<AuthCubit>().editPassword(mobile),
                  ),
                ),
                const Spacer(),
                Center(child: Text(local.copyright, style: AppTextStyle.style12.copyWith(color: AppColor.grey))),
                20.gap,
              ],
            ),
          ),
        );
      },
    );
  }

  void _listener(BuildContext context, AuthState state) {
    final local = AppLocalizations.of(context)!;
    state.maybeWhen(
      errorUpdatePassword: (message) => SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: message)),
      orElse: () => null,
    );
  }
}
