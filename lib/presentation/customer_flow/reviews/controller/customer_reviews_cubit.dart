import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/context/global.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../providers/domain/usecase/provider_usecase.dart';
import '../domain/model/customer_reviews_model.dart';
import '../domain/model/params/category_review_model.dart';
import '../domain/model/params/customer_rate_param.dart';
import '../domain/usecase/customer_reviews_usecase.dart';

part 'customer_reviews_state.dart';
part 'customer_reviews_cubit.freezed.dart';

class CustomerReviewsCubit extends Cubit<CustomerReviewsState> {
  final ProviderUsecase providerUsecase;
  final CustomerReviewsUsecase usecase;
  CustomerReviewsCubit({required this.usecase, required this.providerUsecase}) : super(const CustomerReviewsState.initial()) {
    getAllReviews();
  }

  TextEditingController note = TextEditingController();
  ValueNotifier<double> rate = ValueNotifier(0.0);

  void changeRate(double r) => rate.value = r;

  Future<void> getAllReviews() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      emit(const _LoadingAllRating());
      final result = await usecase.getAllReviews();
      result.fold((failure) => emit(_ErrorAllRating(message: failure.message)), (success) {
        final reviews = success.data ?? [];
        if (reviews.isEmpty) {
          emit(const _EmptyAllRating());
          return;
        }
        final Map<String, List<CustomerReviewsModel>> groupedByCategory = {};
        for (final review in reviews) {
          final categoryName = review.merchantCategoryName ?? "Unknown";
          if (groupedByCategory.containsKey(categoryName)) {
            groupedByCategory[categoryName]!.add(review);
          } else {
            groupedByCategory[categoryName] = [review];
          }
        }
        final List<CategoryReviewModel> categoryReviews =
            groupedByCategory.entries.map((entry) => CategoryReviewModel(categoryName: entry.key, customerReviews: entry.value)).toList();

        emit(_SuccessAllRating(data: categoryReviews));
      });
    } catch (e) {
      emit(_ErrorAllRating(message: '${local.errorGetRatings} $e'));
    }
  }

  Future<void> addReviews(int type, int id, int interactionId) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    SmartDialog.showLoading();
    try {
      final result = await usecase.ratingMerchant(
        CustomerRateParam.fromJson({'notes': note.text, 'interaction_id': interactionId, 'merchant_id': id, 'rate': rate.value, 'type': type}),
      );
      result.fold(
        (fialure) {
          SmartDialog.dismiss();
          SmartDialog.show(builder: (context) => WidgetDilog(title: local.warning, isError: true, description: '${local.errorAddRating} ${fialure.message}'));
        },
        (success) async {
          SmartDialog.dismiss();
          GlobalContext.context.pop();
          await getAllReviews();
        },
      );
    } catch (e) {
      logger.e('Error When Add Ratings: $e');
      SmartDialog.dismiss();
    }
  }

  Future<void> merchantInteraction(BuildContext context, int id, String type, int merchantInteractionId) async {
    try {
      SmartDialog.showLoading();
      final result = await providerUsecase.merchantInteraction(id, type, merchantInteractionId: merchantInteractionId);
      result.fold(
        (l) {
          logger.e('Failure Merchant Interaction ${l.message}');
          SmartDialog.dismiss();
        },
        (r) async {
          if (type == '1') {
            SmartDialog.dismiss();
            await getAllReviews();
          } else {
            SmartDialog.dismiss();
          }
        },
      );
    } catch (e) {
      logger.e('Failure Merchant Interaction  $e');
      SmartDialog.dismiss();
    }
  }
}
