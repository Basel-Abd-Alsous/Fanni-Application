import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../../core/services/hive_services/box_kes.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../injection_container.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../layout/domain/model/customer_profile_model.dart';
import '../../controller/home_customer_cubit.dart';

class ContainerCustomerInfo extends StatelessWidget {
  const ContainerCustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<HomeCustomerCubit, HomeCustomerState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: sl<Box<CustomerProfile>>().listenable(),
          builder: (context, value, child) {
            CustomerProfile? customerProfile = value.get(BoxKeys.userData);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      spacing: 5,
                      children: [
                        const Icon(Icons.person, size: 30, color: Colors.white),
                        Text('${local.welcome2} ${customerProfile?.name ?? '- - - -'}', style: AppTextStyle.style12B.copyWith(color: AppColor.white)),
                      ],
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        const Icon(Icons.date_range, size: 30, color: Colors.white),
                        Text(DateFormat('dd MMM, yyyy').format(DateTime.now()), style: AppTextStyle.style12B.copyWith(color: AppColor.white)),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
