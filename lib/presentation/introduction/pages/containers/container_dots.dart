import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/unit/app_color.dart';
import '../../controller/into_cubit.dart';

class ContainerDots extends StatelessWidget {
  const ContainerDots({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntoCubit, IntoState>(
      builder: (context, state) {
        return SmoothPageIndicator(
          controller: context.read<IntoCubit>().controller,
          count: context.read<IntoCubit>().intro().length - 1,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColor.primaryColor,
            dotColor: Colors.grey,
            dotHeight: 10,
            dotWidth: 10,
            expansionFactor: 3,
            spacing: 6,
          ),
        );
      },
    );
  }
}
