import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_empty.dart';
import '../../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/setting_cubit.dart';

class ContentScreen extends StatelessWidget {
  final String content;
  const ContentScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<SettingCubit>()..getContent(content),
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return ValueListenableBuilder(
            valueListenable: context.read<SettingCubit>().content,
            builder: (context, value, child) => widgetSuccessContent({"title": content == 'about' ? local.aboutUs :content == 'privacy-policy' ? local.privacy : local.termsAndConditions, "desc": value}, local),
          );
        },
      ),
    );
  }

  Scaffold widgetSuccessContent(Map data, AppLocalizations local) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(data["title"] ?? '', style: AppTextStyle.style16B)),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 40),
          padding: const EdgeInsets.all(10.0),
          child: HtmlWidget(
            data["desc"] ?? '',
            textStyle: AppTextStyle.style14,
            onLoadingBuilder: (context, element, loadingProgress) => const Center(child: CircularProgressIndicator()),
            onErrorBuilder: (context, element, error) => _widgetEmptyOrErrorNotifications(),
          ),
        ),
      ),
    );
  }

  WidgetEmptyScreen _widgetEmptyOrErrorNotifications({VoidCallback? onPressed, String? message}) {
    return WidgetEmptyScreen(
      title: 'No Content Available',
      desc: message ?? 'We couldn’t find any Content at the moment. Please check back later.',
      icon: SvgPicture.asset(Assets.iconNotification, color: Colors.grey),
      onPressed: onPressed,
    );
  }
}
