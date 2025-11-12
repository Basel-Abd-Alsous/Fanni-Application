import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../injection_container.dart';
import '../../../../main.dart';
import '../../layout/domain/model/merchant_profile_model.dart';
import '../../layout/domain/usecase/layout_usecase.dart';
import '../domain/usecase/reviews_usecase.dart';

part 'reviews_provider_state.dart';
part 'reviews_provider_cubit.freezed.dart';

class ReviewsProviderCubit extends Cubit<ReviewsProviderState> {
  final ReviewsUsecaseProvider usecase;
  final LayoutProviderUsecase layoutUsecase;
  ReviewsProviderCubit({required this.usecase, required this.layoutUsecase}) : super(const ReviewsProviderState.initial()) {
    getProfile();
  }

  Future<void> getProfile() async {
    try {
      final result = await layoutUsecase.getProfile();
      result.fold((l) => logger.e('Failure Get Profile ${l.message}'), (r) => sl<Box<MerchantProfile>>().put(BoxKeys.merchantData, r.data!));
    } catch (e) {
      logger.e('Failure Get Profile $e');
    }
  }
}
