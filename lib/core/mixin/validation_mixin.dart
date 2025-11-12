import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

mixin FormValidationMixin {
  final _emailRegEx = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$');
  final _mobileRegEx = RegExp(r'^[0-9]{10}$');

  String? validateNull(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.fieldRequired;
    }
    return null;
  }

  String? validateMobile(BuildContext context, String? value) {
    final local = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) {
      return local.mobileEmpty;
    }
    if (!_mobileRegEx.hasMatch(value)) {
      return local.mobileInvalid;
    }
    return null;
  }

  String? validateEmail(BuildContext context, String? value) {
    final local = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) {
      return local.emailEmpty;
    }
    if (!_emailRegEx.hasMatch(value)) {
      return local.emailInvalid;
    }
    return null;
  }

  String? validatePassword(BuildContext context, String? value) {
    final local = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) {
      return local.passwordEmpty;
    }
    if (value.length < 8) {
      return local.passwordLength;
    }
    return null;
  }
}
