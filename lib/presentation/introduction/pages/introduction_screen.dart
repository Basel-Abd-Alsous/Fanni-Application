import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/router_key.dart';
import '../../../core/unit/app_text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/into_cubit.dart';
import '../domain/model/introduction_model.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => sl<IntoCubit>(),
        child: BlocBuilder<IntoCubit, IntoState>(
          builder: (context, state) {
            IntroModel data = context.read<IntoCubit>().intro()[0];
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Text(data.title!, style: AppTextStyle.style26B),
                    Text(data.description!, textAlign: TextAlign.center, style: AppTextStyle.style16),
                    Image.asset(data.image!),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(children: [Expanded(child: AppButton.text(text: local.getStarted, onPressed: () => context.push(RouterKey.stepper)))]),
        ),
      ),
    );
  }
}
