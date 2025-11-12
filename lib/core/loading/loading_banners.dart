import 'package:flutter/material.dart';

import '../extension/gap.dart';
import '../widget/widget_loading.dart';

class LoadingBanners extends StatelessWidget {
  const LoadingBanners({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        15.gap,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Stack(alignment: Alignment.bottomLeft, children: [WidgetLoading(width: double.infinity, height: 130)]),
          ),
        ),
        10.gap,
      ],
    );
  }
}
