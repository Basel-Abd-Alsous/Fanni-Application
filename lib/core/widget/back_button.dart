import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../injection_container.dart';
import '../services/hive_services/box_kes.dart';
import '../unit/app_color.dart';

class WidgetBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  const WidgetBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final lang = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.lang);
    bool? theme = sl<Box>(instanceName: BoxKeys.appBox).get(BoxKeys.theme, defaultValue: true);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton.filled(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(theme == false ? Colors.black : AppColor.white)),
            onPressed: onTap ?? () => context.pop(),
            icon: Icon(lang == 'en' ? Icons.arrow_forward : Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
