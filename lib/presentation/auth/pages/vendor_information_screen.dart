import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/extension/gap.dart';
import '../../../core/router/router_key.dart';
import '../../../core/unit/app_text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/auth_cubit.dart';
import '../widgets/widget_vendor_images.dart';
import 'containers/container_vendor_info.dart';

class VendorInformationScreen extends StatelessWidget {
  const VendorInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<AuthCubit>(),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(local.information, style: AppTextStyle.style16B)),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const WidgetVendorImages(), 40.gap, const ContainerVenderInfo()]),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
            child: Row(children: [Expanded(child: AppButton.text(text: local.update, onPressed: () => context.go(RouterKey.layoutProvider)))]),
          ),
        ),
      ),
    );
  }
}
