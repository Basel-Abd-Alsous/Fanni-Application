import 'package:flutter/material.dart';

import '../../presentation/customer_flow/category/widgets/widget_category.dart';

class LoadingCategory extends StatelessWidget {
  const LoadingCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemCount: 5,
      itemBuilder: (context, index) => const WidgetCategory(loading: true,),
    );
  }
}
