import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/context/global.dart';
import '../../../../core/extension/gap.dart';
import '../../../../core/loading/loading_providers.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_empty.dart';
import '../../../../core/widget/widget_text_field.dart';
import '../../../../injection_container.dart';
import '../controller/merchants_cubit.dart';
import '../domain/model/providers_model.dart';
import '../widgets/widget_provider_card.dart';
import '../../../../l10n/app_localizations.dart';

class AllProvidersScreen extends StatelessWidget {
  final int catId;
  final String? title;
  const AllProvidersScreen({super.key, required this.catId, this.title});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<MerchantsCubit>()..getAllProviders(catId: catId),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(title ?? local.electricians, style: AppTextStyle.style16B)),
        body: BlocBuilder<MerchantsCubit, MerchantsState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  WidgetTextField(
                    local.searchByProviderName,
                    prefixIcon: Icon(Icons.search, color: AppColor.primaryColor),
                    hintStyle: AppTextStyle.style11,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: AppColor.primaryColor)),
                    onChanged: (value) => context.read<MerchantsCubit>().searchProvider(value),
                  ),
                  10.gap,
                  state.maybeWhen(
                    loadingProviders: () => const LoadingProviders(),
                    successProviders: (data, hasMore) => _successProviders(context, hasMore, data.data?.data ?? []),
                    emptyProviders: () => _widgetEmptyOrErrorProviders(),
                    errorProviders:
                        (message) => _widgetEmptyOrErrorProviders(message: message, onPressed: () => context.read<MerchantsCubit>().getAllProviders()),
                    orElse: () => _widgetEmptyOrErrorProviders(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Expanded _successProviders(BuildContext context, bool? hasMore, List<Providers> data) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              controller: context.read<MerchantsCubit>().scrollController,
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) => WidgetProviderCard(merchant: data[index]),
            ),
          ),
          if (hasMore == true)
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 20, height: 20, child: CircularProgressIndicator.adaptive()),
                  const SizedBox(width: 10),
                  Text('loading ...', style: AppTextStyle.style12B),
                ],
              ),
            ),
        ],
      ),
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
