import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constant/app_image.dart';
import '../../../../../core/extension/gap.dart';
import '../../../../../core/loading/loading_banners.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/widget/widget_cache_network_image.dart';
import '../../../../../core/widget/widget_empty.dart';
import '../../controller/home_customer_cubit.dart';
import '../../domain/model/banners_model.dart';

class ContainerSlider extends StatelessWidget {
  const ContainerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCustomerCubit, HomeCustomerState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadingBanners: () => const LoadingBanners(),
          successBanners: (data) => _successBanners(context, data),
          errorBanners: (message) => _widgetEmptyOrErrorBanners(message: message, onPressed: () => context.read<HomeCustomerCubit>().getAllBanners()),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Column _successBanners(BuildContext context, List<Banners> data) {
    return Column(
      children: [
        15.gap,
        SizedBox(
          height: 130,
          width: double.infinity,
          child: PageView.builder(
            controller: context.read<HomeCustomerCubit>().pageController,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  launchUrl(Uri.parse(data[index].link ?? ''));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: WidgetCachNetworkImage(image: data[index].banner ?? '', width: double.infinity, hieght: 200, boxFit: BoxFit.cover),
                  ),
                ),
              );
            },
          ),
        ),
        10.gap,
        SmoothPageIndicator(
          controller: context.read<HomeCustomerCubit>().pageController,
          count: data.length,
          effect: WormEffect(dotHeight: 10, dotWidth: 10, activeDotColor: AppColor.primaryColor, dotColor: AppColor.secondColor.withOpacity(0.5)),
        ),
      ],
    );
  }

  WidgetEmptyScreen _widgetEmptyOrErrorBanners({VoidCallback? onPressed, String? message}) {
    return WidgetEmptyScreen(
      title: 'No Banners Available',
      desc: message ?? 'We couldn’t find any banners at the moment. Please check back later.',
      icon: SvgPicture.asset(Assets.iconNotification, color: Colors.grey),
      onPressed: onPressed,
    );
  }
}
