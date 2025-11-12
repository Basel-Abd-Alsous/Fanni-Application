import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/function/app_size.dart';
import '../../../../core/mixin/validation_mixin.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/auth_cubit.dart';
import '../../domain/model/param/register_param.dart';

class ContainerOTP extends StatelessWidget with FormValidationMixin {
  final RegisterParam registerParam;
  final bool? isRegister;
  ContainerOTP({super.key, this.isRegister = false, required this.registerParam});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<AuthCubit, AuthState>(
      listener: _listener,
      builder: (context, state) {
        bool loading = state.maybeWhen(orElse: () => false, loadingVerify: () => true);
        return Container(
          width: double.infinity,
          height: 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
          child: Form(
            key: context.read<AuthCubit>().keyOTP,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(local.verifyYourNumber, style: AppTextStyle.style22B),
                5.gap,
                Text('${local.enterOtpBelow} : ${registerParam.mobileNumber}', style: AppTextStyle.style13.copyWith(color: AppColor.grey)),
                25.gap,
                Center(
                  child: Pinput(
                    autofocus: true,
                    showCursor: true,
                    length: 6,
                    controller: context.read<AuthCubit>().verifyOtp,
                    validator: (value) => validateNull(context, value),
                    hapticFeedbackType: HapticFeedbackType.mediumImpact,
                  ),
                ),
                25.gap,
                Center(
                  child: AppButton.text(
                    width: AppSize(context).width * 0.8,
                    text: local.send,
                    loading: loading,
                    onPressed: () => context.read<AuthCubit>().verify(registerParam: registerParam, isRegister: isRegister),
                  ),
                ),
                const Spacer(),
                Center(child: Text(local.didntReceiveCode, style: AppTextStyle.style14)),
                5.gap,
                Center(
                  child: InkWell(
                    onTap: () => context.read<AuthCubit>().sendOTP(phone: registerParam.mobileNumber ?? ''),
                    child: Text(local.resendNewCode, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor)),
                  ),
                ),
                15.gap,
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
      errorVerify: (message) => SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: message)),
      orElse: () => null,
    );
  }
}
