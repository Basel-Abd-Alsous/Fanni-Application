import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pinput/pinput.dart';

import '../../../core/extension/gap.dart';
import '../../../core/function/app_size.dart';
import '../../../core/mixin/validation_mixin.dart';
import '../../../core/services/hive_services/user_flow.dart';
import '../../../core/unit/app_color.dart';
import '../../../core/unit/app_text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/setting_cubit.dart';

class VerifyMobileScreen extends StatelessWidget with FormValidationMixin {
  final String mobile;
  VerifyMobileScreen({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => sl<SettingCubit>(),
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(local.verifyNumber, style: AppTextStyle.style16B), centerTitle: true),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                key: context.read<SettingCubit>().otpKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    50.gap,
                    Text(local.verifyYourNumber, style: AppTextStyle.style18B),
                    8.gap,
                    Text(local.enterOtpBelow, style: AppTextStyle.style14.copyWith(color: Colors.grey), textAlign: TextAlign.center),
                    32.gap,
                    Center(
                      child: Pinput(
                        autofocus: true,
                        showCursor: true,
                        length: 6,
                        controller: context.read<SettingCubit>().otp,
                        validator: (value) => validateNull(context, value),
                        hapticFeedbackType: HapticFeedbackType.mediumImpact,
                      ),
                    ),
                    32.gap,
                    Center(
                      child: ValueListenableBuilder(
                        valueListenable: sl<Box<UserFlow>>().listenable(),
                        builder: (context, value, child) {
                          return AppButton.text(
                            text: local.send,
                            onPressed: () => context.read<SettingCubit>().verify(mobile.replaceAll('+', '')),
                            width: AppSize(context).width * 0.8,
                          );
                        },
                      ),
                    ),
                    20.gap,
                    Text(local.didNotReceiveCode, style: AppTextStyle.style14B),
                    10.gap,
                    InkWell(
                      onTap: () => context.read<SettingCubit>().sendOTP(phone: mobile.replaceAll('+', '')),
                      child: Text(local.resendCode, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
