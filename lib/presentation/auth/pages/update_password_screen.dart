import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/gap.dart';
import '../../../core/function/app_size.dart';
import '../../../core/router/router_key.dart';
import '../../../injection_container.dart';
import '../controller/auth_cubit.dart';
import '../widgets/widget_auth_bg.dart';
import 'containers/container_update.dart';

class UpdatePasswordScreen extends StatelessWidget {
  final String mobile;
  const UpdatePasswordScreen({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(top: 0, child: Image.asset(Assets.imageChooseFlow, fit: BoxFit.contain, width: AppSize(context).width)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [const WidgetAuthBg(), 120.gap, BlocProvider(create: (context) => sl<AuthCubit>(), child: ContainerUpdate(mobile: mobile))],
            ),
            Positioned(
              top: 0,
              right: 10,
              child: SafeArea(child: IconButton.filled(onPressed: () => context.pushReplacement(RouterKey.forget), icon: const Icon(Icons.arrow_back))),
            ),
          ],
        ),
      ),
    );
  }
}
