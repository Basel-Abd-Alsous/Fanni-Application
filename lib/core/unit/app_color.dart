import 'package:flutter/material.dart';

import '../context/global.dart';
import '../function/hex_color.dart';

abstract class AppColor {
  AppColor._();

  static Color border = HexColor.fromHex('EBEBEB');
  static const Color red = Colors.red;
  static const Color blue = Colors.blue;
  static const Color green = Colors.green;
  static Color red200 = Colors.red.shade200;
  static Color red600 = Colors.red.shade600;
  static Color white = HexColor.fromHex('FFFFFF');
  static const Color grey = Colors.grey;
  static const Color black = Colors.black;
  static Color primaryColor = Theme.of(GlobalContext.context).colorScheme.primary;
  static const Color primaryColor200 = Color.fromARGB(255, 255, 207, 176);
  static const Color primaryColor600 = Color(0xFFFF7F27);
  static Color secondColor = Theme.of(GlobalContext.context).colorScheme.secondaryContainer;
}
