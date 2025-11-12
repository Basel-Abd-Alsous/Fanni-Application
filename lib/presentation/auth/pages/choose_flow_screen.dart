import 'package:flutter/material.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/gap.dart';
import '../../../core/function/app_size.dart';
import '../widgets/widget_auth_bg.dart';
import 'containers/container_choose_flow.dart';

class ChooseFlowScreen extends StatelessWidget {
  const ChooseFlowScreen({super.key});

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
              children: [const WidgetAuthBg(), 120.gap, const ContainerChooseFlow()],
            ),
          ],
        ),
      ),
    );
  }
}
