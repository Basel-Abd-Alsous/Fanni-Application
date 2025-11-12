import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constant/app_image.dart';
import '../../../../../core/context/global.dart';
import '../../../../../core/extension/gap.dart';
import '../../../../../core/loading/loading_providers.dart';
import '../../../../../core/router/router_key.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/widget_empty.dart';
import '../../../../../injection_container.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../providers/controller/merchants_cubit.dart';
import '../../../providers/domain/model/providers_model.dart';
import '../../../providers/widgets/widget_provider_card.dart';

class ContainerHomeProvider extends StatelessWidget {
  const ContainerHomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<MerchantsCubit>()..getAllProviders(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.gap,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(local.providers, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
              InkWell(
                onTap: () => GlobalContext.context.push(RouterKey.providers),
                child: Text(local.seeAll, style: AppTextStyle.style12.copyWith(color: AppColor.grey)),
              ),
            ],
          ),
          10.gap,
          BlocBuilder<MerchantsCubit, MerchantsState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadingProviders: () => const LoadingProviders(),
                successProviders: (data, _) => _successProviders(data.data?.data ?? []),
                emptyProviders: () => _widgetEmptyOrErrorProviders(),
                errorProviders: (message) => _widgetEmptyOrErrorProviders(message: message, onPressed: () => context.read<MerchantsCubit>().getAllProviders()),
                orElse: () => _widgetEmptyOrErrorProviders(),
              );
            },
          ),
        ],
      ),
    );
  }

  Column _successProviders(List<Providers> data) {
    final local = AppLocalizations.of(GlobalContext.context)!;
    return Column(
      children: [
        GridView.builder(
          itemCount: data.length > 6 ? 6 : data.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => WidgetProviderCard(merchant: data[index]),
        ),
        10.gap,
        AppButton.text(width: double.infinity, text: local.allProviders, onPressed: () => GlobalContext.context.push(RouterKey.providers)),
      ],
    );
  }

  WidgetEmptyScreen _widgetEmptyOrErrorProviders({VoidCallback? onPressed, String? message}) {
    final local = AppLocalizations.of(GlobalContext.context)!;
    return WidgetEmptyScreen(
      title: local.noProviders,
      desc: message ?? local.noProvidersDesc,
      icon: SvgPicture.asset(Assets.iconProviders, color: Colors.grey),
      onPressed: onPressed,
    );
  }
}
