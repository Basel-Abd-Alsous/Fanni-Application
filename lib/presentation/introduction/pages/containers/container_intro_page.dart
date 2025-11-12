import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
 import '../../controller/into_cubit.dart';

class ContainerIntroPages extends StatelessWidget {
  const ContainerIntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntoCubit, IntoState>(
      builder: (context, state) {
        return Expanded(
          child: PageView.builder(
            itemCount: context.read<IntoCubit>().intro().length - 1,
            controller: context.read<IntoCubit>().controller,
            itemBuilder: (context, index) {
              final data = context.read<IntoCubit>().intro()[index + 1];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(data.image!),
                    Text(data.title!, style: AppTextStyle.style26B),
                    Text(data.description!, textAlign: TextAlign.center, style: AppTextStyle.style16.copyWith(color: AppColor.grey)),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
