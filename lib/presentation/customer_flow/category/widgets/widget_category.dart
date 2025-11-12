import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_key.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/unit/app_text_style.dart';
import '../../../../core/widget/widget_cache_network_image.dart';
import '../../../../core/widget/widget_loading.dart';
import '../../../provider_flow/profile/domain/model/major_model.dart';

class WidgetCategory extends StatelessWidget {
  final bool? loading;
  final bool? isHome;
  final Major? category;
  const WidgetCategory({super.key, this.category, this.loading = false, this.isHome = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading == true ? null : () => context.push('${RouterKey.providers}?catId=${category?.id}&title=${category?.name}'),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.border)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: loading == true ? 8 : 0,
          children: [
            if (loading == true)
              WidgetLoading(width: isHome == true ? 40 : 60, height: isHome == true ? 40 : 60)
            else
              WidgetCachNetworkImage(image: category?.image ?? '', width: isHome == true ? 40 : 60, hieght: isHome == true ? 40 : 60),
            if (loading == true)
              const WidgetLoading(width: 30)
            else
              Text(category?.name ?? '', style: isHome == true ? AppTextStyle.style10B : AppTextStyle.style14B),
          ],
        ),
      ),
    );
  }
}
