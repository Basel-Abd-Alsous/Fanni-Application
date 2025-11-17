import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/router/router_key.dart';
import '../../../core/services/hive_services/box_kes.dart';
import '../../../core/services/hive_services/user_flow.dart';
import '../../../injection_container.dart';
part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial()) {
    _startSplashTimer();
  }

  void _startSplashTimer() async => await Future.delayed(const Duration(seconds: 3), () async {
    emit(_EndTimer(route: await _getRoute()));
  });

  Future<String> _getRoute() async {
    bool intro = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.intro, defaultValue: false);
    String usertoken = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.usertoken, defaultValue: '');
    UserFlow? userFlow = sl<Box<UserFlow>>().get(BoxKeys.userFlow, defaultValue: UserFlow.customer);
    if (intro == false) {
      return RouterKey.introduction;
    } else {
      if (usertoken == '') {
        return RouterKey.auth;
      } else {
        if (userFlow == UserFlow.customer) {
          return RouterKey.layoutCustomer;
        } else {
          return RouterKey.layoutProvider;
        }
      }
    }
  }
}
