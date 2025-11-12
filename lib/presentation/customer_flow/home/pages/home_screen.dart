import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unit/app_color.dart';
import '../../../../injection_container.dart';
import '../controller/home_customer_cubit.dart';
import '../widgets/widget_appbar_home.dart';
import 'containers/cintainer_customer_info.dart';
import 'containers/container_home_category.dart';
import 'containers/container_home_providers.dart';
import 'containers/container_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeCustomerCubit>(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(width: double.infinity, height: 250, color: AppColor.primaryColor),
                  const SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetAppBarHome(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ContainerCustomerInfo(), ContainerSlider(), ContainerHomeCategory(), ContainerHomeProvider()],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
