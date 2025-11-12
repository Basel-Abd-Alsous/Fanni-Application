import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../injection_container.dart';
import '../../core/services/hive_services/box_kes.dart';

class LanguageCubit extends Cubit<Locale> {
  factory LanguageCubit() {
    return _instance;
  }

  LanguageCubit._internal() : super(_getInitialLocale());

  static final LanguageCubit _instance = LanguageCubit._internal();

  static Locale _getInitialLocale() {
    final box = sl<Box>(instanceName: BoxKeys.appBox);
    final savedLang = box.get(BoxKeys.lang, defaultValue: 'ar') as String;
    return Locale(savedLang);
  }

  void changeLanguage() {
    final langCode = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang);
    if (langCode == 'ar') {
      sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.lang, 'en');
    } else {
      sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.lang, 'ar');
    }
  }
}
