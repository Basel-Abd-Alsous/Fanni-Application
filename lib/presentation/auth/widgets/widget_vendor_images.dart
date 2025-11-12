import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/unit/app_color.dart';
import '../../../core/widget/widget_cache_network_image.dart';
import '../controller/auth_cubit.dart';

class WidgetVendorImages extends StatelessWidget {
  const WidgetVendorImages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 130,
              width: double.infinity,
              child: Stack(
                children: [
                  ValueListenableBuilder(
                    valueListenable: context.read<AuthCubit>().caverImage,
                    builder:
                        (context, value, child) =>
                            value.path != ''
                                ? SizedBox(width: double.infinity, child: Image.file(value, fit: BoxFit.cover))
                                : const WidgetCachNetworkImage(
                                  image: 'https://www.politecnicointercontinental.com/wp-content/uploads/2025/07/herramientas-manuales.jpg',
                                ),
                  ),
                  Container(color: AppColor.black.withOpacity(0.2)),
                ],
              ),
            ),
            Positioned(
              right: 16,
              bottom: -20,
              child: InkWell(
                onTap: () => context.read<AuthCubit>().selectProviderImage(true),
                child: const CircleAvatar(backgroundColor: AppColor.black, radius: 20, child: Icon(Icons.camera_alt, color: Colors.white, size: 20)),
              ),
            ),
            Positioned(
              bottom: -40,
              left: MediaQuery.of(context).size.width / 2 - 40,
              child: InkWell(
                onTap: () => context.read<AuthCubit>().selectProviderImage(false),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: context.read<AuthCubit>().profileImage,
                      builder:
                          (context, value, child) =>
                              value.path != ''
                                  ? Container(
                                    width: 90,
                                    height: 90,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(color: AppColor.white, shape: BoxShape.circle, border: Border.all(color: AppColor.grey)),
                                    child: Image.file(value, fit: BoxFit.cover),
                                  )
                                  : const CircleAvatar(radius: 45, backgroundColor: Colors.grey, child: Icon(Icons.person, size: 50, color: Colors.white)),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(backgroundColor: AppColor.black, radius: 14, child: Icon(Icons.camera_alt, size: 16, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
