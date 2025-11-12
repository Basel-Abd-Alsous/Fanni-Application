import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/unit/app_text_style.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
  import '../controller/notification_cubit.dart';
 import 'container/notification_container.dart';

class NotificationCustomerScreen extends StatelessWidget {
  const NotificationCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(local.notifications, style: AppTextStyle.style16B)),
      body: BlocProvider(create: (context) => sl<NotificationCubit>(), child: const ContainerNotifications()),
    );
  }
}
