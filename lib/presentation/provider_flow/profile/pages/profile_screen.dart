import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extension/gap.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../layout/widget/widget_layout.dart';
import '../controller/profile_provider_cubit.dart';
import '../widgets/widget_vendor_images.dart';
import 'containers/container_profile.dart';

class ProfileScreen extends StatelessWidget {
  final bool? isLayout;
  const ProfileScreen({super.key, this.isLayout = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<ProfileProviderCubit>(),
      child: Scaffold(
        appBar:
            isLayout == false
                ? WidgetLayoutProvider.widgetLayoutAppbar(context, local.editProfile)
                : AppBar(
                  centerTitle: true,
                  title: Text(local.information, style: AppTextStyle.style16B),
                  leading: IconButton(onPressed: () => context.go(RouterKey.layoutProvider), icon: Text(local.skip, style: AppTextStyle.style12B)),
                ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const WidgetVendorImages(), 40.gap, ContainerProfile()],
          ),
        ),
        bottomNavigationBar: BlocBuilder<ProfileProviderCubit, ProfileProviderState>(
          builder: (context, state) {
            bool loading = state.maybeWhen(orElse: () => false, loadingUpdateProfile: () => true);
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                child: Row(
                  children: [
                    Expanded(
                      child: AppButton.text(
                        loading: loading,
                        text: local.update,

                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          context.read<ProfileProviderCubit>().updateProfile();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
