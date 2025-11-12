import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../injection_container.dart';
import '../../services/hive_services/box_kes.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial());

  void changeTheme(bool isDark) {
    sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.theme, isDark ? true : false);
    emit(ThemeState.changeTheme(isDark: isDark));
  }
}
