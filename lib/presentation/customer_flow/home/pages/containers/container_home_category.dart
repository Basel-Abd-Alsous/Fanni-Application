import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constant/app_image.dart';
import '../../../../../core/context/global.dart';
import '../../../../../core/extension/gap.dart';
import '../../../../../core/loading/loading_category_home.dart';
import '../../../../../core/unit/app_color.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../core/widget/widget_empty.dart';
import '../../../../../injection_container.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../provider_flow/profile/domain/model/major_model.dart';
import '../../../category/controller/category_cubit.dart';
import '../../../category/widgets/widget_category.dart';
import '../../../layout/controller/layout_customer_cubit.dart';

class ContainerHomeCategory extends StatelessWidget {
  const ContainerHomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoryCubit>()..getAllCategory(),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadingCategory: () => const LoadingCategoryHome(),
            successCategory: (data) => _successCategory(context, data),
            emptyCategory: () => _widgetEmptyOrErrorCategory(),
            errorCategory: (message) => _widgetEmptyOrErrorCategory(message: message, onPressed: () => context.read<CategoryCubit>().getAllCategory()),
            orElse: () => _widgetEmptyOrErrorCategory(),
          );
        },
      ),
    );
  }

  Column _successCategory(BuildContext context, List<Major> data) {
    final local = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.gap,
        Text(local.category, style: AppTextStyle.style16B.copyWith(color: AppColor.primaryColor)),
        10.gap,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 1),
          itemCount: data.length > 7 ? 8 : data.length,
          itemBuilder: (context, index) {
            if (index < 7) {
              return WidgetCategory(category: data[index], isHome: true);
            } else {
              return InkWell(
                onTap: () => context.read<LayoutCustomerCubit>().changeIndex(1),
                child: Card(
                  color: AppColor.primaryColor,
                  child: Center(child: Text(local.seeAll, style: AppTextStyle.style13B.copyWith(color: AppColor.white))),
                ),
              );
            }
          },
        ),
      ],
    );
  }

  WidgetEmptyScreen _widgetEmptyOrErrorCategory({VoidCallback? onPressed, String? message}) {
    final local = AppLocalizations.of(GlobalContext.context)!;
    return WidgetEmptyScreen(
      title: local.noCategory,
      desc: message ?? local.noCategoryDesc,
      icon: SvgPicture.asset(Assets.iconCategory, color: Colors.grey),
      onPressed: onPressed,
    );
  }
}
