import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/context/global.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../provider_flow/profile/domain/model/major_model.dart';
import '../../../provider_flow/profile/domain/usecase/profile_provider_usecase.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final ProfileProviderUsecase usecaseProfile;
  CategoryCubit({required this.usecaseProfile}) : super(const CategoryState.initial());

  Future<void> getAllCategory() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      emit(const _LoadingCategory());
      final result = await usecaseProfile.getAllMajor();
      result.fold((fialure) => emit(_ErrorCategory(message: fialure.message)), (success) {
        if (success.data?.isEmpty ?? true) {
          emit(const _EmptyCategory());
        } else {
          emit(_SuccessCategory(data: success.data ?? []));
        }
      });
    } catch (e) {
      emit(_ErrorCategory(message: '${local.errorGetCategories} $e'));
    }
  }
}
