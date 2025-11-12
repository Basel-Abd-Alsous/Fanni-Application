import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

import '../controller/layout_cubit.dart';
import '../widget/widget_layout.dart';

class LayoutProviderScreen extends StatelessWidget {
  const LayoutProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LayoutProviderCubit>(),
      child: BlocBuilder<LayoutProviderCubit, LayoutProviderState>(
        builder: (context, state) {
          return Scaffold(
            body: state.maybeWhen(initial: (currentIndex) => context.read<LayoutProviderCubit>().screens[currentIndex], orElse: () => const Scaffold()),
            bottomNavigationBar: WidgetLayoutProvider.widgetBottomNavBar(),
          );
        },
      ),
    );
  }
}
