import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../controller/merchants_cubit.dart';
import 'containers/container_provider.dart';
import 'containers/container_provider_contact.dart';
import 'containers/container_provider_information.dart';
import 'containers/container_provider_photos.dart';
import 'containers/container_provider_reviews.dart';

class ProviderDetailsScreen extends StatelessWidget {
  final int id;
  const ProviderDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MerchantsCubit>()..providerDetails(id),
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerProvider(),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ContainerProviderInformations(), ContainerProviderPhotos(), ContainerProviderContact(), ContainerProviderReviews()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
