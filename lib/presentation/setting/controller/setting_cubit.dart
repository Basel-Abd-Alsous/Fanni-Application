import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../core/context/global.dart';
import '../../../core/router/router_key.dart';
import '../../../core/services/hive_services/box_kes.dart';
import '../../../core/services/hive_services/user_flow.dart';
import '../../../core/widget/widget_daialog.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../../main.dart';
import '../../auth/domain/model/param/otp_param.dart';
import '../../auth/domain/usecase/auth_usecase.dart';
import '../../customer_flow/layout/domain/model/customer_profile_model.dart';
import '../../provider_flow/layout/domain/model/merchant_profile_model.dart';
import '../domain/usecase/setting_usecase.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState> {
  final SettingUsecase usecase;
  final AuthUsecase authUsecase;

  SettingCubit({required this.authUsecase, required this.usecase}) : super(const SettingState.initial());

  final updateKey = GlobalKey<FormState>();
  final mobileKey = GlobalKey<FormState>();
  final otpKey = GlobalKey<FormState>();

  ValueNotifier<bool> showPassword1 = ValueNotifier(true);
  ValueNotifier<bool> showPassword2 = ValueNotifier(true);
  ValueNotifier<bool> showPassword3 = ValueNotifier(true);
  ValueNotifier<String> content = ValueNotifier('');

  TextEditingController mobile = TextEditingController();
  TextEditingController otp = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void modifyMobileNumber(PhoneNumber phone) => mobile.text = phone.phoneNumber ?? '';
  void changeVisablePassword1() => showPassword1.value = !showPassword1.value;
  void changeVisablePassword2() => showPassword2.value = !showPassword2.value;
  void changeVisablePassword3() => showPassword3.value = !showPassword3.value;

  Future<void> deleteAccount() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    SmartDialog.show(
      builder:
          (context) => WidgetDilog(
            isError: true,
            title: local.warning,
            description: local.deleteAccountConfirm,
            onCancel: () => SmartDialog.dismiss(),
            cancelText: local.back,
            confirmText: local.delete,
            onConfirm: () {
              SmartDialog.dismiss();
              sl<Box>(instanceName: BoxKeys.appBox).delete(BoxKeys.usertoken);
              sl<Box<MerchantProfile>>().delete(BoxKeys.merchantData);
              sl<Box<CustomerProfile>>().delete(BoxKeys.userData);
              sl<FirebaseMessaging>().unsubscribeFromTopic('users');
              sl<FirebaseMessaging>().unsubscribeFromTopic('merchants');
              GlobalContext.context.go(RouterKey.auth);
            },
          ),
    );
  }

  Future<void> updatePassword() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    UserFlow userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow) as UserFlow;
    if (!updateKey.currentState!.validate()) return;
    try {
      emit(const _LoadingPassword());
      final result = await usecase.updatePassword(password.text, newPassword.text);
      result.fold((fialure) => emit(_ErrorPassword(message: fialure.message)), (success) {
        SmartDialog.show(
          builder:
              (context) => WidgetDilog(
                title: local.updateSuccess,
                description: local.passwordUpdateSuccess,
                cancelText: local.back,
                onCancel: () {
                  if (userFlow == UserFlow.customer) {
                    GlobalContext.context.go(RouterKey.layoutCustomer);
                  } else {
                    GlobalContext.context.go(RouterKey.layoutProvider);
                  }
                  SmartDialog.dismiss();
                },
              ),
        );
        emit(const _SuccessPassword());
      });
    } catch (e) {
      emit(_ErrorPassword(message: 'Error When Update Password: $e'));
    }
  }

  Future<void> sendOTP({String? phone}) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      SmartDialog.showLoading(msg: local.loading);
      final result = await authUsecase.resend(phone ?? mobile.text.replaceAll('+', ''));
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: failure.message));
        },
        (success) {
          GlobalContext.context.push('${RouterKey.verifyMobil}?mobile=${phone ?? mobile.text}');
          SmartDialog.dismiss();
        },
      );
    } catch (e, s) {
      logger.e('Send OTP error: $e\n$s');
      SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: 'Send OTP error: $e'));
      SmartDialog.dismiss();
    }
  }

  Future<void> verify(String phone) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    if (!otpKey.currentState!.validate()) return;
    try {
      final local = AppLocalizations.of(GlobalContext.context)!;
      SmartDialog.showLoading(msg: local.loading);
      final result = await authUsecase.verifyOtp(OTPParam.fromJson({'phone': phone.replaceAll('+', ''), 'otp': otp.text}));
      result.fold(
        (failure) {
          logger.e('Verify OTP error: ${failure.message}');
          SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: '${local.otpVerifyError} ${failure.message}'));
          SmartDialog.dismiss();
        },
        (success) async {
          updateMobile(phone);
        },
      );
    } catch (e, s) {
      logger.e('${local.otpVerifyError} $e\n$s');
      SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: '${local.otpVerifyError}$e'));
      SmartDialog.dismiss();
    }
  }

  Future<void> updateMobile(String phone) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      UserFlow userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow) as UserFlow;
      final result = await usecase.updateMobile(phone);
      result.fold(
        (fialure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(isError: true, title: local.warning, description: '${local.mobileUpdateError} ${fialure.message}'),
          );
        },
        (success) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder:
                (context) => WidgetDilog(
                  title: local.updateSuccess,
                  description: local.mobileUpdateSuccess,
                  cancelText: local.back,
                  onCancel: () {
                    if (userFlow == UserFlow.customer) {
                      GlobalContext.context.go(RouterKey.layoutCustomer);
                    } else {
                      GlobalContext.context.go(RouterKey.layoutProvider);
                    }
                    SmartDialog.dismiss();
                  },
                ),
          );
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: 'Mobile Update error: $e'));
    }
  }

  Future<void> getContent(String type) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      SmartDialog.showLoading(msg: local.loading);
      final result = await usecase.getContent(type);
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: failure.message));
        },
        (success) {
          content.value = success.data ?? '';
          SmartDialog.dismiss();
        },
      );
    } catch (e, s) {
      logger.e('get Content error: $e\n$s');
      SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: '${local.contentFetchError} $e'));
      SmartDialog.dismiss();
    }
  }
}
