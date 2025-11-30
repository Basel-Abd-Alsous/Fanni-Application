import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extension/gap.dart';
import '../../../../../core/mixin/validation_mixin.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/widget_cache_network_image.dart';
import '../../../../../core/widget/widget_drop_down.dart';
import '../../../../../core/widget/widget_text_field.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../controller/profile_provider_cubit.dart';

class ContainerProfile extends StatelessWidget with FormValidationMixin {
  ContainerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    Widget sectionTitle(String title) => Text(title, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor));
    return BlocBuilder<ProfileProviderCubit, ProfileProviderState>(
      builder: (context, state) {
        bool loadingCity = state.maybeWhen(orElse: () => false, loadingCities: () => true);
        bool loadingMajor = state.maybeWhen(orElse: () => false, loadingMajor: () => true);
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: context.read<ProfileProviderCubit>().keyProviderInfo,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sectionTitle(local.photoOfWork),
                5.gap,
                WidgetTextField(
                  local.selectPhotoOfWork,
                  readOnly: true,
                  suffixIcon: const Icon(Icons.camera_alt_outlined, color: AppColor.grey),
                  onTap: () => context.read<ProfileProviderCubit>().selectMultiPhotoOfWork(),
                ),
                10.gap,
                ValueListenableBuilder(
                  valueListenable: context.read<ProfileProviderCubit>().photoOfWork,
                  builder: (context, images, child) {
                    return SizedBox(
                      height: (images.length / 3).ceil() * 130,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          final image = images[index];
                          return Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                WidgetCachNetworkImage(image: image, radius: 15),
                                InkWell(
                                  onTap: () => context.read<ProfileProviderCubit>().deleteWorkImage(index),
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(color: AppColor.red, shape: BoxShape.circle),
                                    child: Icon(Icons.delete, color: AppColor.white, size: 16),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                10.gap,
                sectionTitle(local.about),
                5.gap,
                WidgetTextField(
                  local.aboutYou,
                  controller: context.read<ProfileProviderCubit>().about,
                  textInputAction: TextInputAction.newline,
                  maxLines: 4,
                  validator: (value) => validateNull(context, value),
                ),
                10.gap,
                sectionTitle(local.major),
                5.gap,
                ValueListenableBuilder(
                  valueListenable: context.read<ProfileProviderCubit>().allMajors,
                  builder:
                      (context, allMajor, child) => WidgetDropdownField(
                        value: context.read<ProfileProviderCubit>().selectedMajor,
                        loading: loadingMajor,
                        hintText: local.selectYourMajor,
                        items: allMajor.map((major) => DropdownMenuItem(value: major, child: Text(major.name ?? ''))).toList(),
                        onChanged: (value) => context.read<ProfileProviderCubit>().changeMajor(value),
                      ),
                ),
                10.gap,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sectionTitle(local.city),
                          3.gap,
                          ValueListenableBuilder(
                            valueListenable: context.read<ProfileProviderCubit>().allCities,
                            builder:
                                (context, allCitie, child) => WidgetDropdownField(
                                  value: context.read<ProfileProviderCubit>().selectedCity,
                                  hintText: local.selectCity,
                                  loading: loadingCity,
                                  items: allCitie.map((city) => DropdownMenuItem(value: city, child: Text(city.name ?? ''))).toList(),
                                  onChanged: (value) => context.read<ProfileProviderCubit>().changeCity(value),
                                ),
                          ),
                        ],
                      ),
                    ),
                    10.gap,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sectionTitle(local.inspectionFee),
                          3.gap,
                          WidgetTextField(
                            local.inspectionFee,
                            controller: context.read<ProfileProviderCubit>().price,
                            validator: (value) => validateNull(context, value),
                            keyboardType: const TextInputType.numberWithOptions(decimal: true),
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [Text(local.currencyJOD, style: AppTextStyle.style14.copyWith(color: AppColor.grey))],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
