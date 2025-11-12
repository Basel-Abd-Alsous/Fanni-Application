import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

import '../controller/layout_customer_cubit.dart';
import '../widget/widget_layout.dart';

class LayoutCustomerScreen extends StatelessWidget {
  const LayoutCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LayoutCustomerCubit>(),
      child: BlocBuilder<LayoutCustomerCubit, LayoutCustomerState>(
        builder: (context, state) {
          return Scaffold(
            body: state.maybeWhen(initial: (currentIndex) => context.read<LayoutCustomerCubit>().screens[currentIndex], orElse: () => const Scaffold()),
            bottomNavigationBar: WidgetLayoutCustomer.widgetBottomNavBar(),
          );
        },
      ),
    );
  }
}
