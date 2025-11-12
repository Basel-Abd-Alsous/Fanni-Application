import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../injection_container.dart';
import '../../../core/extension/gap.dart';
import '../../../core/unit/app_text_style.dart';
import '../controller/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<SplashCubit>(),
        child: BlocConsumer<SplashCubit, SplashState>(
          listener: _listener,
          builder: (context, state) {
            return Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(Assets.imageSplash, fit: BoxFit.cover, width: double.infinity, height: double.infinity),
                  Positioned(bottom: 30, child: SvgPicture.asset(Assets.iconSplash)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Assets.imageLogoWithoutBg, width: double.infinity, height: 100),
                      40.gap,
                      Text('Fanni Application', style: AppTextStyle.style30B.copyWith(color: AppColor.white)),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _listener(BuildContext context, SplashState state) => state.maybeWhen(endTimer: (route) => context.go(route), orElse: () => null);
}
