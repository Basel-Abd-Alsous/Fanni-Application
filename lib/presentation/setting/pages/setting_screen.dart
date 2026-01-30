import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/router/router_key.dart';
import '../../../core/services/hive_services/box_kes.dart';
import '../../../core/services/hive_services/user_flow.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../../l10n/controller/localization.cubit.dart';
import '../../customer_flow/layout/domain/model/customer_profile_model.dart';
import '../../customer_flow/layout/widget/widget_layout.dart';
import '../../provider_flow/layout/domain/model/merchant_profile_model.dart';
import '../../provider_flow/layout/widget/widget_layout.dart';
import '../controller/setting_cubit.dart';
import '../widgets/widget_setting_card.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<SettingCubit>(),
      child: ValueListenableBuilder(
        valueListenable: sl<Box<UserFlow>>().listenable(),
        builder: (context, value, child) {
          final userFlow = value.get(BoxKeys.userFlow) as UserFlow;
          return Scaffold(
            appBar: userFlow == UserFlow.customer ? WidgetLayoutCustomer.widgetLayoutAppbar(context, local.settings) : WidgetLayoutProvider.widgetLayoutAppbar(context, local.settings),
            body: BlocBuilder<SettingCubit, SettingState>(
              builder: (context, state) {
                return ValueListenableBuilder(
                  valueListenable: sl<Box<CustomerProfile>>().listenable(),
                  builder: (context, valueCustomer, child) {
                    CustomerProfile? customerProfile = valueCustomer.get(BoxKeys.userData);
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          if (userFlow != UserFlow.vendor)
                            if (customerProfile != null) ...[
                              WidgetSettingCard(title: local.editMobileNumber, icon: Assets.iconPhone, onTap: () => context.push(RouterKey.editMobile)),
                              WidgetSettingCard(title: local.updatePassword, icon: Assets.iconLock, onTap: () => context.push(RouterKey.changePassoword)),
                            ] else
                              const SizedBox()
                          else ...[
                            WidgetSettingCard(title: local.editMobileNumber, icon: Assets.iconPhone, onTap: () => context.push(RouterKey.editMobile)),
                            WidgetSettingCard(title: local.updatePassword, icon: Assets.iconLock, onTap: () => context.push(RouterKey.changePassoword)),
                          ],

                          if (userFlow == UserFlow.vendor) WidgetSettingCard(title: local.subscriptions, icon: Assets.iconSubscriptions, onTap: () => context.push(RouterKey.subscriptions)),
                          WidgetSettingCard(title: local.language, icon: Assets.iconLanguage, isLanguage: true, onTap: () => context.read<LanguageCubit>().changeLanguage()),
                          WidgetSettingCard(title: local.aboutUs, icon: Assets.iconAbout, onTap: () => context.push('${RouterKey.content}?content=${'about-us'}')),
                          WidgetSettingCard(title: local.privacy, icon: Assets.iconPrivacy, onTap: () => context.push('${RouterKey.content}?content=${'privacy-policy'}')),
                          WidgetSettingCard(title: local.termsAndConditions, icon: Assets.iconTerms, onTap: () => context.push('${RouterKey.content}?content=${'terms-conditions'}')),
                          WidgetSettingCard(
                            title: userFlow != UserFlow.vendor && customerProfile != null ? local.logout : local.login,
                            icon: Assets.iconLogout,
                            haveArrow: false,
                            onTap: () {
                              sl<Box>(instanceName: BoxKeys.appBox).delete(BoxKeys.usertoken);
                              sl<Box<MerchantProfile>>().delete(BoxKeys.merchantData);
                              sl<Box<CustomerProfile>>().delete(BoxKeys.userData);
                              sl<FirebaseMessaging>().unsubscribeFromTopic('users');
                              sl<FirebaseMessaging>().unsubscribeFromTopic('merchants');
                              context.go(RouterKey.auth);
                            },
                          ),
                          if (userFlow != UserFlow.vendor && customerProfile != null)
                            WidgetSettingCard(title: local.deleteAccount, icon: Assets.iconDelete, haveArrow: false, onTap: () => context.read<SettingCubit>().deleteAccount()),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
