import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/into_cubit.dart';

class ContainerButtons extends StatelessWidget {
  const ContainerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocBuilder<IntoCubit, IntoState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 100,
              children: [
                Expanded(child: AppButton.text(text: local.next, onPressed: () => context.read<IntoCubit>().nextPage())),
                Expanded(
                  child: AppButton.text(
                    color: AppColor.white,
                    textStyle: AppTextStyle.style14B,
                    text: local.skip,
                    onPressed: () => context.read<IntoCubit>().skip(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
