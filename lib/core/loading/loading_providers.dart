import 'package:flutter/material.dart';

import '../../presentation/customer_flow/providers/widgets/widget_provider_card.dart';

class LoadingProviders extends StatelessWidget {
  const LoadingProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) => const WidgetProviderCard(loading: true),
    );
  }
}
