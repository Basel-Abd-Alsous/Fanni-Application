import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/gap.dart';
import '../../../core/function/app_size.dart';
import '../../../injection_container.dart';
import '../controller/auth_cubit.dart';
import '../domain/model/param/register_param.dart';
import '../widgets/widget_auth_bg.dart';
import 'containers/container_otp.dart';

class OtpScreen extends StatelessWidget {
  final RegisterParam registerParam;
  final bool? isRegister;
  const OtpScreen({super.key, required this.registerParam, this.isRegister = false});

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
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const WidgetAuthBg(),
                    100.gap,
                    BlocProvider(create: (context) => sl<AuthCubit>(), child: ContainerOTP(registerParam: registerParam, isRegister: isRegister)),
                  ],
                ),
              ),
            ),
            Positioned(top: 0, right: 10, child: SafeArea(child: IconButton.filled(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back)))),
          ],
        ),
      ),
    );
  }
}
