import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/function/hex_color.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../layout/controller/layout_cubit.dart';
import '../controller/home_provider_cubit.dart';
import 'containers/container_avalable_status.dart';
import 'containers/container_home_reviews.dart';
import 'containers/container_provider_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor.fromHex('F3F5FD'),
        centerTitle: true,
        leading: IconButton(onPressed: () => context.read<LayoutProviderCubit>().changeIndex(3), icon: Icon(Icons.menu, color: AppColor.primaryColor)),
        title: Text(local.home, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
        actions: [
          IconButton(onPressed: () => context.push(RouterKey.notifications), icon: Icon(Icons.notifications_active_outlined, color: AppColor.primaryColor)),
        ],
      ),
      body: BlocProvider(
        create: (context) => sl<HomeProviderCubit>(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const ContainerProviderInfo(), 5.gap, const ContainerAvailableStatus(), 20.gap, const ContainerHomeReviews()],
          ),
        ),
      ),
    );
  }
}
