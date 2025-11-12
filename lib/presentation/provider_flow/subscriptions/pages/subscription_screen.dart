import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../controller/subscription_provider_cubit.dart';
import '../widgets/widget_bottom_sheets.dart';
import '../widgets/widget_subscription_card.dart';
// ... imports remain the same

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<SubscriptionProviderCubit>(),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(local.subscriptions, style: AppTextStyle.style16B)),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(local.subscriptionDescription, style: AppTextStyle.style13.copyWith(color: AppColor.grey)),
              Text(local.packages, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor)),
              BlocBuilder<SubscriptionProviderCubit, SubscriptionProviderState>(
                builder: (context, state) {
                  return Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: context.read<SubscriptionProviderCubit>().allPackages,
                      builder:
                          (context, value, child) => ListView.separated(
                            itemCount: value.length,
                            separatorBuilder: (context, index) => 5.gap,
                            itemBuilder:
                                (context, index) => WidgetSubscriptionCard(
                                  packages: value[index],
                                  onTap: () {
                                    // Call method to select this package
                                    context.read<SubscriptionProviderCubit>().selectPackage(index);
                                  },
                                ),
                          ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BlocBuilder<SubscriptionProviderCubit, SubscriptionProviderState>(
          builder: (context, state) {
            return ValueListenableBuilder(
              valueListenable: context.read<SubscriptionProviderCubit>().cliqInfo,
              builder:
                  (context, value, child) => SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: AppButton.text(text: local.continueToPayments, onPressed: () => WidgetBottomSheets.showPaymentMethodSheet(context, value)),
                          ),
                        ],
                      ),
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}
