import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/gap.dart';
import '../../../core/mixin/validation_mixin.dart';
import '../../../core/unit/app_color.dart';
import '../../../core/unit/app_text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/widget_phone_field.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/setting_cubit.dart';

class EditMobilProviderScreen extends StatelessWidget with FormValidationMixin {
  EditMobilProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    Widget sectionTitle(String title) => Text(title, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor));
    return BlocProvider(
      create: (context) => sl<SettingCubit>(),
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(centerTitle: true, title: Text(local.editMobileNumber, style: AppTextStyle.style16B)),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: context.read<SettingCubit>().mobileKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle(local.mobile),
                    5.gap,
                    WidgetPhoneField(
                      validator: (value) => validateMobile(context, value),
                      onCountryChanged: (phone) => context.read<SettingCubit>().modifyMobileNumber(phone),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                child: Row(children: [Expanded(child: AppButton.text(text: local.update, onPressed: () => context.read<SettingCubit>().sendOTP()))]),
              ),
            ),
          );
        },
      ),
    );
  }
}
