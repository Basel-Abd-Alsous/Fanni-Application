import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/function/hex_color.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../controller/layout_customer_cubit.dart';

class WidgetLayoutCustomer {
  static AppBar widgetLayoutAppbar(BuildContext context, String title) {
    return AppBar(
      title: Text(title, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
      backgroundColor: HexColor.fromHex('F3F5FD'),
      centerTitle: true,
      leading: IconButton(onPressed: () => context.read<LayoutCustomerCubit>().changeIndex(0), icon: Icon(Icons.arrow_back, color: AppColor.primaryColor)),
      actions: [
        IconButton(onPressed: () => context.push(RouterKey.notifications), icon: Icon(Icons.notifications_active_outlined, color: AppColor.primaryColor)),
      ],
    );
  }

  static BlocBuilder<LayoutCustomerCubit, LayoutCustomerState> widgetBottomNavBar() {
    return BlocBuilder<LayoutCustomerCubit, LayoutCustomerState>(
      builder:
          (context, state) => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.currentIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            selectedLabelStyle: AppTextStyle.style12B,
            items: context.read<LayoutCustomerCubit>().items(context),
            onTap: context.read<LayoutCustomerCubit>().changeIndex,
          ),
    );
  }
}
