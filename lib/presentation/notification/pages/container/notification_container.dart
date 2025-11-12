import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/context/global.dart';
import '../../../../core/extension/gap.dart';
import '../../../../core/loading/loading_notification.dart';
import '../../../../core/widget/widget_empty.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/notification_cubit.dart';
import '../../domain/model/notifications_model.dart';
import '../../widget/widget_notification.dart';

class ContainerNotifications extends StatelessWidget {
  const ContainerNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadingNotifications: () => const LoadingAllNotification(),
          successNotifications: (data) => _widgetSuccessNotification(data),
          emptyNotifications: () => _widgetEmptyOrErrorNotifications(),
          errorNotifications:
              (message) => _widgetEmptyOrErrorNotifications(message: message, onPressed: () => context.read<NotificationCubit>().getNotifications()),
          orElse: () => _widgetEmptyOrErrorNotifications(),
        );
      },
    );
  }

  ListView _widgetSuccessNotification(List<Notifications> data) {
    return ListView.separated(
      itemCount: data.length,
      padding: const EdgeInsets.all(10),
      separatorBuilder: (context, index) => 6.gap,
      itemBuilder: (context, index) {
        Notifications notification = data[index];
        return WidgetNotificationList(title: notification.title ?? '', desc: notification.body ?? '', date: DateTime.now());
      },
    );
  }

  WidgetEmptyScreen _widgetEmptyOrErrorNotifications({VoidCallback? onPressed, String? message}) {
    final local = AppLocalizations.of(GlobalContext.context)!;

    return WidgetEmptyScreen(
      title: local.noNotifications,
      desc: message ?? local.noNotificationsDesc,
      icon: SvgPicture.asset(Assets.iconNotification, color: Colors.grey),
      onPressed: onPressed,
    );
  }
}
