import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/context/global.dart';
import '../../../../core/loading/loading_category.dart';
import '../../../../core/widget/widget_empty.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../provider_flow/profile/domain/model/major_model.dart';
import '../../layout/widget/widget_layout.dart';
import '../controller/category_cubit.dart';
import '../widgets/widget_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<CategoryCubit>()..getAllCategory(),
      child: Scaffold(
        appBar: WidgetLayoutCustomer.widgetLayoutAppbar(context, local.category),
        body: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadingCategory: () => const LoadingCategory(),
              successCategory: (data) => _successCategory(data),
              emptyCategory: () => _widgetEmptyOrErrorCategory(),
              errorCategory: (message) => _widgetEmptyOrErrorCategory(message: message, onPressed: () => context.read<CategoryCubit>().getAllCategory()),
              orElse: () => _widgetEmptyOrErrorCategory(),
            );
          },
        ),
      ),
    );
  }

  GridView _successCategory(List<Major> data) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemCount: data.length,
      itemBuilder: (context, index) => WidgetCategory(category: data[index]),
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
