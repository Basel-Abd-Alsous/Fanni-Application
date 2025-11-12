import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extension/gap.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/widget_loading.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../controller/merchants_cubit.dart';
import '../../domain/model/providers_details_model.dart';

class ContainerProviderInformations extends StatelessWidget {
  const ContainerProviderInformations({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocBuilder<MerchantsCubit, MerchantsState>(
      builder: (context, state) {
        ProvidersDetailsModel? data = state.maybeWhen(orElse: () => null, successProviderDetails: (data) => data);
        bool? loading = state.maybeWhen(orElse: () => false, loadingProviderDetails: () => true);
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            loading == true
                ? const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [WidgetLoading(width: double.infinity), WidgetLoading(width: double.infinity), WidgetLoading(width: 100)],
                )
                : Text(
                  data?.data?.data?.description ?? '- - - - - - - - - - - - - -',
                  textAlign: TextAlign.start,
                  style: AppTextStyle.style12B.copyWith(color: AppColor.black),
                ),
            20.gap,
            WidgetProviderInfo(loading: loading, title: local.city, value: data?.data?.data?.cityName ?? '- - - -'),
            Divider(color: AppColor.grey.withOpacity(0.3)),
            WidgetProviderInfo(loading: loading, title: local.major, value: data?.data?.data?.categoryName ?? '- - - -'),
            Divider(color: AppColor.grey.withOpacity(0.3)),
            WidgetProviderInfo(loading: loading, title: local.inspectionFee, value: '${data?.data?.data?.inspectionFee ?? '0.0'} ${local.currencyJOD}'),
          ],
        );
      },
    );
  }
}

class WidgetProviderInfo extends StatelessWidget {
  final String title;
  final String value;
  final bool? loading;
  const WidgetProviderInfo({super.key, required this.title, required this.value, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: AppTextStyle.style13B.copyWith(color: AppColor.primaryColor)),
        loading == true ? const WidgetLoading(width: 60) : Text(value, style: AppTextStyle.style13B),
      ],
    );
  }
}
