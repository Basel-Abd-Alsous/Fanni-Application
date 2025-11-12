import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../l10n/app_localizations.dart';
import '../../layout/controller/layout_customer_cubit.dart';

class WidgetAppBarHome extends StatelessWidget {
  const WidgetAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () => context.push(RouterKey.notifications), icon: Icon(Icons.notifications_active_outlined, size: 25, color: AppColor.white)),
        Text(local.home, style: AppTextStyle.style16B.copyWith(color: AppColor.white)),
        IconButton(onPressed: () => context.read<LayoutCustomerCubit>().changeIndex(3), icon: Icon(Icons.menu, size: 25, color: AppColor.white)),
      ],
    );
  }
}
