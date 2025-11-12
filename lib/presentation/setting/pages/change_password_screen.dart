import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/extension/gap.dart';
import '../../../core/mixin/validation_mixin.dart';
import '../../../core/services/hive_services/user_flow.dart';
import '../../../core/unit/app_color.dart';
import '../../../core/unit/app_text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/widget_text_field.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/setting_cubit.dart';

class ChangePasswordScreen extends StatelessWidget with FormValidationMixin {
  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    Widget sectionTitle(String title) => Text(title, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor));
    return BlocProvider(
      create: (context) => sl<SettingCubit>(),
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(centerTitle: true, title: Text(local.updatePassword, style: AppTextStyle.style16B)),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: context.read<SettingCubit>().updateKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle(local.oldPassword),
                    5.gap,
                    ValueListenableBuilder(
                      valueListenable: context.read<SettingCubit>().showPassword1,
                      builder:
                          (context, value, child) => WidgetTextField(
                            local.enterPassword,
                            obscureText: value,
                            controller: context.read<SettingCubit>().password,
                            validator: (value) => validatePassword(context, value),
                            prefixIcon: const Icon(Icons.lock_open),
                            suffixIcon: IconButton(
                              onPressed: () => context.read<SettingCubit>().changeVisablePassword1(),
                              icon: Icon(value == true ? Icons.visibility_off : Icons.visibility_sharp),
                            ),
                          ),
                    ),
                    15.gap,
                    sectionTitle(local.newPassword),
                    5.gap,
                    ValueListenableBuilder(
                      valueListenable: context.read<SettingCubit>().showPassword2,
                      builder:
                          (context, value, child) => WidgetTextField(
                            local.enterPassword,
                            obscureText: value,
                            controller: context.read<SettingCubit>().newPassword,
                            validator: (value) => validatePassword(context, value),
                            prefixIcon: const Icon(Icons.lock_open),
                            suffixIcon: IconButton(
                              onPressed: () => context.read<SettingCubit>().changeVisablePassword2(),
                              icon: Icon(value == true ? Icons.visibility_off : Icons.visibility_sharp),
                            ),
                          ),
                    ),
                    15.gap,
                    sectionTitle(local.confirmPassword),
                    5.gap,
                    ValueListenableBuilder(
                      valueListenable: context.read<SettingCubit>().showPassword3,
                      builder:
                          (context, value, child) => WidgetTextField(
                            local.enterPassword,
                            obscureText: value,
                            controller: context.read<SettingCubit>().confirmPassword,
                            validator: (value) => validatePassword(context, value),
                            prefixIcon: const Icon(Icons.lock_open),
                            suffixIcon: IconButton(
                              onPressed: () => context.read<SettingCubit>().changeVisablePassword3(),
                              icon: Icon(value == true ? Icons.visibility_off : Icons.visibility_sharp),
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                child: Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: sl<Box<UserFlow>>().listenable(),
                        builder: (context, value, child) {
                          return AppButton.text(
                            text: local.send,
                            loading: state.maybeWhen(orElse: () => false, loadingPassword: () => true),
                            onPressed: () => context.read<SettingCubit>().updatePassword(),
                          );
                        },
                      ),
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
