import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../core/context/global.dart';
import '../../../core/function/image_picker_class.dart';
import '../../../core/router/router_key.dart';
import '../../../core/services/hive_services/box_kes.dart';
import '../../../core/services/hive_services/user_flow.dart';
import '../../../core/widget/widget_daialog.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../../main.dart';
import '../domain/model/param/login_param.dart';
import '../domain/model/param/otp_param.dart';
import '../domain/model/param/password_param.dart';
import '../domain/model/param/register_param.dart';
import '../domain/usecase/auth_usecase.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthUsecase authUsecase;
  AuthCubit({required this.authUsecase}) : super(const AuthState.initial());

  final keyAuth = GlobalKey<FormState>();
  final keyForget = GlobalKey<FormState>();
  final keyOTP = GlobalKey<FormState>();
  final keyUpdate = GlobalKey<FormState>();
  final keyVendorInfo = GlobalKey<FormState>();

  ValueNotifier<File> caverImage = ValueNotifier(File(''));
  ValueNotifier<File> profileImage = ValueNotifier(File(''));
  ValueNotifier<List<File>> photoOfWork = ValueNotifier([File('')]);
  ValueNotifier<bool> showPassword = ValueNotifier(true);

  TextEditingController fullName = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController verifyOtp = TextEditingController();
  TextEditingController major = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController inspectionFee = TextEditingController();
  TextEditingController about = TextEditingController();

  void modifyMobileNumber(PhoneNumber phone) => mobile.text = phone.phoneNumber ?? '';
  void changeVisablePassword() => showPassword.value = !showPassword.value;
  Future<void> authButton(bool isRegister) async => isRegister ? await sendOTP(isRegister: true) : await login();
  void selectProviderImage(bool isCover) {
    pickImage(source: ImageSource.gallery, needPath: true, context: GlobalContext.context).then((value) {
      if (value != null) {
        if (isCover == true) {
          caverImage.value = value;
        } else {
          profileImage.value = value;
        }
      }
    });
  }

  void selectMultiPhotoOfWork() {
    pickMaltiImage(context: GlobalContext.context).then((value) {
      if (value.isNotEmpty) {
        photoOfWork.value = value;
      }
    });
  }

  Future<void> login() async {
    try {
      if (!keyAuth.currentState!.validate()) return;
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      String fcm = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.fcmtoken, defaultValue: '');
      emit(const _LoadingLogin());

      final result = await authUsecase.login(
        LoginParam.fromJson({'mobile_number': mobile.text.replaceAll('+', ''), 'password': password.text, 'fcm_token': fcm}),
      );
      result.fold((failure) => emit(_ErrorLogin(message: failure.message)), (success) {
        sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.usertoken, success.data!);
        sl<Box<UserFlow>>().put(BoxKeys.userFlow, userFlow);
        if (userFlow == UserFlow.customer) {
          sl<FirebaseMessaging>().subscribeToTopic('users');
        } else {
          sl<FirebaseMessaging>().subscribeToTopic('merchants');
        }
        GlobalContext.context.go(userFlow == UserFlow.customer ? RouterKey.layoutCustomer : RouterKey.layoutProvider);
        emit(const _SuccessLogin());
      });
    } catch (e, s) {
      logger.e('Login error: $e\n$s');
      emit(_ErrorLogin(message: e.toString()));
    }
  }

  Future<void> register(RegisterParam registerParam) async {
    try {
      UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer) as UserFlow;
      final result = await authUsecase.register(registerParam);
      result.fold((failure) => emit(_ErrorVerify(message: failure.message)), (success) async {
        if (userFlow == UserFlow.customer) {
          sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.usertoken, success.data!);
          sl<Box<UserFlow>>().put(BoxKeys.userFlow, userFlow);
          GlobalContext.context.go(RouterKey.layoutCustomer);
          sl<FirebaseMessaging>().subscribeToTopic('users');
        } else {
          SmartDialog.show(
            clickMaskDismiss: false,
            backType: SmartBackType.block,
            builder:
                (context) => WidgetDilog(
                  title: 'Registration Submitted',
                  description: 'Thank you for registering as a skilled worker with us. We will get back to you soon.',
                  cancelText: "Login",
                  onCancel: () {
                    GlobalContext.context.go(RouterKey.auth);
                    SmartDialog.dismiss();
                  },
                ),
          );
        }

        emit(const _SuccessVerify());
      });
    } catch (e, s) {
      logger.e('Register error: $e\n$s');
      emit(_ErrorVerify(message: e.toString()));
    }
  }

  Future<void> verify({RegisterParam? registerParam, bool? isRegister}) async {
    if (!keyOTP.currentState!.validate()) return;
    try {
      emit(const _LoadingVerify());
      final result = await authUsecase.verifyOtp(
        OTPParam.fromJson({'phone': registerParam?.mobileNumber?.replaceAll('+', ''), 'otp': int.tryParse(verifyOtp.text)}),
      );
      result.fold(
        (failure) {
          emit(_ErrorVerify(message: failure.message));
        },
        (success) async {
          if (isRegister == true) {
            await register(registerParam!);
          } else {
            GlobalContext.context.pushReplacement('${RouterKey.updatePassword}?mobile=${registerParam?.mobileNumber}');
            emit(const _SuccessVerify());
          }
        },
      );
    } catch (e, s) {
      logger.e('Verify OTP error: $e\n$s');
      emit(_ErrorVerify(message: e.toString()));
    }
  }

  Future<void> forget() async {
    if (!keyForget.currentState!.validate()) return;
    try {
      emit(const _LoadingForget());
      final result = await authUsecase.forget(mobile.text.replaceAll('+', ''));
      result.fold((failure) => emit(_ErrorForget(message: failure.message)), (success) async {
        await sendOTP(phone: mobile.text.replaceAll('+', ''));
        RegisterParam? register = RegisterParam.fromJson({"mobile_number": mobile.text});
        GlobalContext.context.pushReplacement(RouterKey.otp, extra: register);
        emit(const _SuccessForget());
      });
    } catch (e, s) {
      logger.e('Forget error: $e\n$s');
      emit(_ErrorForget(message: e.toString()));
    }
  }

  Future<void> sendOTP({String? phone, bool? isRegister}) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      String fcm = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.fcmtoken, defaultValue: '');
      if (isRegister == true && !keyAuth.currentState!.validate() == true) return;
      RegisterParam registerParam = RegisterParam.fromJson({
        'name': fullName.text,
        'mobile_number': mobile.text.replaceAll('+', ''),
        'fcm_token': fcm,
        'password': password.text,
      });
      SmartDialog.showLoading(msg: local.loading);
      final result = await authUsecase.resend(phone ?? registerParam.mobileNumber!.replaceAll('+', ''));
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: local.warning, description: failure.message));
        },
        (success) {
          if (isRegister == true) GlobalContext.context.push('${RouterKey.otp}?isRegister=${true}', extra: registerParam);
          SmartDialog.dismiss();
        },
      );
    } catch (e, s) {
      logger.e('Send OTP error: $e\n$s');
      SmartDialog.dismiss();
    }
  }

  Future<void> editPassword(String phone) async {
    if (!keyUpdate.currentState!.validate()) return;
    try {
      emit(const _LoadingUpdatePassword());
      final result = await authUsecase.updatePassword(PasswordParam.fromJson({'mobile_number': phone.replaceAll('+', ''), 'new_password': newPassword.text}));
      result.fold((failure) => emit(_ErrorUpdatePassword(message: failure.message)), (success) {
        GlobalContext.context.pushReplacement(RouterKey.auth);
        emit(const _SuccessUpdatePassword());
      });
    } catch (e, s) {
      logger.e('Update Password error: $e\n$s');
      emit(_ErrorUpdatePassword(message: e.toString()));
    }
  }

  @override
  Future<void> close() {
    fullName.dispose();
    mobile.dispose();
    password.dispose();
    newPassword.dispose();
    verifyOtp.dispose();
    major.dispose();
    city.dispose();
    inspectionFee.dispose();
    about.dispose();
    return super.close();
  }
}
