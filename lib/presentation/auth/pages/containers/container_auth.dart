import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/function/app_size.dart';
import '../../../../core/mixin/validation_mixin.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/services/hive_services/user_flow.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../core/widget/widget_phone_field.dart';
import '../../../../core/widget/widget_text_field.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/auth_cubit.dart';

class ContainerAuth extends StatelessWidget with FormValidationMixin {
  final bool isRegister;
  ContainerAuth({super.key, required this.isRegister});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: _listener,
      builder: (context, state) {
        bool? isLoading = state.maybeWhen(orElse: () => false, loadingLogin: () => true, loadingRegister: () => true);
        return Container(
          width: double.infinity,
          height: isRegister ? 400 : 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
          child: Form(
            key: context.read<AuthCubit>().keyAuth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ValueListenableBuilder(
                  valueListenable: sl<Box<UserFlow>>().listenable(),
                  builder: (context, value, child) {
                    UserFlow userFlow = value.get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
                    return userFlow == UserFlow.customer
                        ? Text(isRegister == true ? local.signUp : local.login, style: AppTextStyle.style20B)
                        : RichText(
                          text: TextSpan(
                            style: AppTextStyle.style20B.copyWith(color: Colors.black, fontFamily: 'Jannalt'),
                            children: [
                              TextSpan(text: "${isRegister == true ? local.signUp : local.login} "),
                              TextSpan(text: '(${local.serviceProvider})', style: AppTextStyle.style14.copyWith(color: AppColor.grey)),
                            ],
                          ),
                        );
                  },
                ),
                15.gap,
                if (isRegister)
                  Column(
                    children: [
                      WidgetTextField(
                        local.fullName,
                        controller: context.read<AuthCubit>().fullName,
                        validator: (value) => validateNull(context, value),
                        prefixIcon: const Icon(Icons.person_outline_sharp),
                      ),
                      10.gap,
                    ],
                  ),
                WidgetPhoneField(onCountryChanged: (phone) => context.read<AuthCubit>().modifyMobileNumber(phone)),
                10.gap,
                ValueListenableBuilder(
                  valueListenable: context.read<AuthCubit>().showPassword,
                  builder:
                      (context, value, child) => WidgetTextField(
                        local.enterPassword,
                        obscureText: value,
                        controller: context.read<AuthCubit>().password,
                        validator: (value) => validatePassword(context, value),
                        prefixIcon: const Icon(Icons.lock_open),
                        suffixIcon: IconButton(
                          onPressed: () => context.read<AuthCubit>().changeVisablePassword(),
                          icon: Icon(value == true ? Icons.visibility_off : Icons.visibility_sharp),
                        ),
                      ),
                ),
                if (!isRegister) ...[
                  10.gap,
                  InkWell(
                    onTap: () => context.pushReplacement(RouterKey.forget),
                    child: Text(local.forgetPassword, style: AppTextStyle.style13B.copyWith(color: AppColor.primaryColor)),
                  ),
                ],
                25.gap,
                Center(
                  child: AppButton.text(
                    width: AppSize(context).width * 0.8,
                    loading: isLoading,
                    text: isRegister ? local.signUp : local.login,
                    onPressed: () => context.read<AuthCubit>().authButton(isRegister),
                  ),
                ),
                const Spacer(),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: isRegister ? "${local.alreadyHaveAccount} " : "${local.dontHaveAccount} ",
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                      children: [
                        TextSpan(
                          text: isRegister ? local.login : local.signUp,
                          style: AppTextStyle.style13B.copyWith(color: AppColor.primaryColor),
                          recognizer: TapGestureRecognizer()..onTap = () => _switchAuth(context),
                        ),
                      ],
                    ),
                  ),
                ),
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
      errorLogin: (message) => SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: message)),
      errorRegister: (message) => SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: message)),
      orElse: () => null,
    );
  }

  void _switchAuth(BuildContext context) => isRegister ? context.pop() : context.push("${RouterKey.auth}?isRegister=true");
}
