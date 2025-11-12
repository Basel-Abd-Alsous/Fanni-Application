import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection_container.dart';
import '../controller/into_cubit.dart';
import 'containers/container_button.dart';
import 'containers/container_dots.dart';
import 'containers/container_intro_page.dart';

class StepperScreen extends StatelessWidget {
  const StepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<IntoCubit>(),
      child: BlocBuilder<IntoCubit, IntoState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [ContainerDots(), ContainerIntroPages()],
              ),
            ),
            bottomNavigationBar: const ContainerButtons(),
          );
        },
      ),
    );
  }
}
