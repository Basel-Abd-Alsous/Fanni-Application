import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/context/global.dart';
import '../../../../core/function/image_picker_class.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../layout/domain/model/merchant_profile_model.dart';
import '../../layout/domain/usecase/layout_usecase.dart';
import '../domain/model/cities_model.dart';
import '../domain/model/major_model.dart';
import '../domain/model/params/provider_profile_param.dart';
import '../domain/usecase/profile_provider_usecase.dart';

part 'profile_provider_state.dart';
part 'profile_provider_cubit.freezed.dart';

class ProfileProviderCubit extends Cubit<ProfileProviderState> {
  final LayoutProviderUsecase layoutUsecase;
  final ProfileProviderUsecase usecase;
  ProfileProviderCubit({required this.layoutUsecase, required this.usecase}) : super(const ProfileProviderState.initial()) {
    Future.wait([getAllCities(), getAllMajor()]).whenComplete(() {
      getProfile();
    });
  }

  final keyProviderInfo = GlobalKey<FormState>();
  File? image;
  ValueNotifier<String> caverImage = ValueNotifier('');
  ValueNotifier<String> profileImage = ValueNotifier('');
  ValueNotifier<List<String>> photoOfWork = ValueNotifier([]);
  ValueNotifier<List<Major>> allMajors = ValueNotifier([]);
  ValueNotifier<List<Cities>> allCities = ValueNotifier([]);

  TextEditingController about = TextEditingController();
  TextEditingController price = TextEditingController();
  Major? selectedMajor;
  Cities? selectedCity;

  void selectProviderImage(bool isCover) {
    pickImage(source: ImageSource.gallery, needPath: true, context: GlobalContext.context).then((value) async {
      if (value != null) {
        image = value;
        await uploadImage(isCover);
      }
      image = null;
    });
  }

  void selectMultiPhotoOfWork() {
    pickMaltiImage(context: GlobalContext.context).then((value) async {
      if (value.isNotEmpty) {
        SmartDialog.showLoading();
        for (var element in value) {
          image = element;
          await uploadImage(false, isMultiImage: true);
        }
        image = null;
        SmartDialog.dismiss();
      }
    });
  }

  void changeMajor(Major? major) => selectedMajor = major;
  void changeCity(Cities? city) => selectedCity = city;
  void deleteWorkImage(int index) {
    List<String> images = List.from(photoOfWork.value);
    images.removeAt(index);
    photoOfWork.value = images;
  }

  Future<void> getProfile() async {
    try {
      SmartDialog.showLoading();
      final result = await layoutUsecase.getProfile();
      result.fold(
        (l) {
          logger.e('Failure Get Profile ${l.message}');
          SmartDialog.dismiss();
        },
        (r) {
          profileImage.value = r.data?.profilePic ?? '';
          caverImage.value = r.data?.coverImage ?? '';
          photoOfWork.value = r.data?.images?.map((value) => value.url.toString()).toList() ?? [];
          selectedCity = allCities.value.where((city) => city.id == r.data!.cityId).toList().first;
          selectedMajor = allMajors.value.where((major) => major.id == r.data!.categoryId).toList().first;
          price.text = r.data?.inspectionFee ?? '';
          about.text = r.data?.description ?? '';
          emit(const _SuccessCities(data: []));
          SmartDialog.dismiss();
        },
      );
    } catch (e) {
      logger.e('Failure Get Profile $e');
      SmartDialog.dismiss();
    }
  }

  Future<void> getAllCities() async {
    try {
      emit(const _LoadingCities());
      final result = await usecase.getAllCities();
      result.fold((fialure) => emit(_ErrorCities(message: fialure.message)), (success) {
        allCities.value = success.data!;
        emit(_SuccessCities(data: success.data ?? []));
      });
    } catch (e) {
      emit(_ErrorCities(message: 'Error When Get Cities: $e'));
    }
  }

  Future<void> getAllMajor() async {
    try {
      emit(const _LoadingMajor());
      final result = await usecase.getAllMajor();
      result.fold((fialure) => emit(_ErrorMajor(message: fialure.message)), (success) {
        allMajors.value = success.data!;
        emit(_SuccessMajor(data: success.data ?? []));
      });
    } catch (e) {
      emit(_ErrorMajor(message: 'Error When Get Majors: $e'));
    }
  }

  Future<void> uploadImage(bool isCaver, {bool? isMultiImage = false}) async {
    try {
      if (isMultiImage == false) SmartDialog.showLoading();
      final result = await usecase.uploadImage(image!);
      result.fold(
        (fialure) {
          logger.e('Error When upload Image: ${fialure.message}');
          if (isMultiImage == false) SmartDialog.dismiss();
        },
        (success) {
          if (isMultiImage == false) {
            if (isCaver) {
              caverImage.value = success.data!;
            } else {
              profileImage.value = success.data!;
            }
          } else {
            List<String> images = List.from(photoOfWork.value);
            images.add(success.data!);
            photoOfWork.value = images;
          }
          if (isMultiImage == false) SmartDialog.dismiss();
        },
      );
    } catch (e) {
      logger.e('Error When Uplad Image: $e');
      if (isMultiImage == false) SmartDialog.dismiss();
    }
  }

  Future<void> updateProfile() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    if (!keyProviderInfo.currentState!.validate()) return;
    try {
      emit(const _LoadingUpdateProfile());
      MerchantProfile? merchantProfile = sl<Box<MerchantProfile>>().get(BoxKeys.merchantData);
      final result = await usecase.updateProfile(
        ProviderProfileParam.fromJson({
          'name': merchantProfile?.name ?? '',
          'category_id': selectedMajor?.id,
          'city_id': selectedCity?.id,
          'profile_pic': profileImage.value.split('/').last,
          'cover_image': caverImage.value.split('/').last,
          'merchant-images': photoOfWork.value.map((image) => image.split('/').last).toList(),
          'inspection_fee': double.tryParse(price.text),
          'description': about.text,
        }),
      );
      result.fold((fialure) => emit(_ErrorUpdateProfile(message: fialure.message)), (success) {
        SmartDialog.show(builder: (context) => WidgetDilog(title: local.updateSuccess, colorCancel: AppColor.green, description: local.profileUpdateSuccess));
        emit(const _SuccessUpdateProfile());
      });
    } catch (e) {
      emit(_ErrorUpdateProfile(message: 'Error When Get Majors: $e'));
    }
  }
}
