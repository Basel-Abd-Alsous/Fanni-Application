import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unit/app_color.dart';
import '../../../../core/widget/widget_cache_network_image.dart';
import '../controller/profile_provider_cubit.dart';

class WidgetVendorImages extends StatelessWidget {
  const WidgetVendorImages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileProviderCubit, ProfileProviderState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            InkWell(
              onTap: () => context.read<ProfileProviderCubit>().selectProviderImage(true),
              child: SizedBox(
                height: 130,
                width: double.infinity,
                child: Stack(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: context.read<ProfileProviderCubit>().caverImage,
                      builder:
                          (context, value, child) =>
                              value == ''
                                  ? Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    width: double.infinity,
                                    child: const Icon(Icons.cloud_upload_rounded, size: 50, color: AppColor.grey),
                                  )
                                  : WidgetCachNetworkImage(image: value),
                    ),
                    Container(color: AppColor.black.withOpacity(0.2)),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: -20,
              child: InkWell(
                onTap: () => context.read<ProfileProviderCubit>().selectProviderImage(true),
                child: const CircleAvatar(backgroundColor: AppColor.black, radius: 20, child: Icon(Icons.camera_alt, color: Colors.white, size: 20)),
              ),
            ),
            Positioned(
              bottom: -40,
              left: MediaQuery.of(context).size.width / 2 - 45,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => context.read<ProfileProviderCubit>().selectProviderImage(false),
                    child: ValueListenableBuilder(
                      valueListenable: context.read<ProfileProviderCubit>().profileImage,
                      builder: (context, value, child) {
                        return value != ''
                            ? Container(
                              width: 90,
                              height: 90,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(color: AppColor.white, shape: BoxShape.circle, border: Border.all(color: AppColor.grey)),
                              child: WidgetCachNetworkImage(image: value),
                            )
                            : const CircleAvatar(radius: 45, backgroundColor: Colors.grey, child: Icon(Icons.person, size: 50, color: Colors.white));
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => context.read<ProfileProviderCubit>().selectProviderImage(false),
                      child: const CircleAvatar(backgroundColor: AppColor.black, radius: 14, child: Icon(Icons.camera_alt, size: 16, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
