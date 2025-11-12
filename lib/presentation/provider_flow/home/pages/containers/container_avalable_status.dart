import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/context/global.dart';
import '../../../../../core/unit/app_text_style.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../../core/unit/app_color.dart';
import '../../controller/home_provider_cubit.dart';

class ContainerAvailableStatus extends StatelessWidget {
  const ContainerAvailableStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProviderCubit, HomeProviderState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: context.read<HomeProviderCubit>().status,
          builder:
              (context, value, child) => Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.border)),
                child: Row(
                  spacing: 10,
                  children: [
                    Switch(value: value, activeColor: Colors.green, onChanged: (value) => context.read<HomeProviderCubit>().changeStatus()),
                    Expanded(child: Text(_switchText(value), style: AppTextStyle.style13B.copyWith(color: _switchColor(value)))),
                  ],
                ),
              ),
        );
      },
    );
  }

  String _switchText(bool status) {
    final local = AppLocalizations.of(GlobalContext.context)!;
    switch (status) {
      case true:
        return '${local.active}\n${local.profileVisible}';
      case false:
        return '${local.unActive}\n${local.activeMsg}';
    }
  }

  Color _switchColor(bool status) {
    switch (status) {
      case true:
        return Colors.green;
      case false:
        return Colors.red;
    }
  }
}
