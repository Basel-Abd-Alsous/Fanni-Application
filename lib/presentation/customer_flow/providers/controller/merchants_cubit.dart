import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/context/global.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../domain/model/providers_details_model.dart';
import '../domain/model/providers_model.dart';
import '../domain/usecase/provider_usecase.dart';

part 'merchants_state.dart';
part 'merchants_cubit.freezed.dart';

class MerchantsCubit extends Cubit<MerchantsState> {
  final ProviderUsecase usecase;
  MerchantsCubit({required this.usecase}) : super(const MerchantsState.initial());

  int page = 1;
  Timer? _debounce;
  ScrollController scrollController = ScrollController();
  TextEditingController search = TextEditingController();

  void _changeProviderPage(int? catId) {
    scrollController.addListener(() {
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 100) {
        state.whenOrNull(
          successProviders: (data, hasMore) {
            final totalPages = data.data?.pagination?.totalPages ?? 1;
            if (page < totalPages) {
              if (hasMore != true) {
                page++;
                getAllProviders(loadMore: true, catId: catId);
              }
            }
          },
        );
      }
    });
  }

  void searchProvider(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      search.text = value;
      page = 1;
      getAllProviders(loadMore: false);
    });
  }

  Future<void> getAllProviders({bool? loadMore, int? catId}) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    if (loadMore != true) page = 1;
    try {
      if (loadMore != true) {
        emit(const _LoadingProviders());
        final result = await usecase.getAllMerchants(search.text, catId, page);
        result.fold((failure) => emit(_ErrorProviders(message: failure.message)), (success) {
          final newData = success.data?.data?.data ?? [];
          if (newData.isEmpty) {
            emit(const _EmptyProviders());
          } else {
            _changeProviderPage(catId);
            emit(_SuccessProviders(data: success.data!));
          }
        });
      } else {
        final currentState = state;
        if (currentState is _SuccessProviders) {
          final totalPages = currentState.data.data?.pagination?.totalPages ?? 1;
          if (page <= totalPages) {
            emit(_SuccessProviders(data: currentState.data, hasMore: true));
            final result = await usecase.getAllMerchants(search.text, catId, page);
            result.fold((failure) => emit(_ErrorProviders(message: failure.message)), (success) {
              if (page == 1) _changeProviderPage(catId);
              final currentList = List<Providers>.from(currentState.data.data?.data ?? []);
              final newData = success.data?.data?.data ?? [];
              currentList.addAll(newData);
              final updatedData = currentState.data.copyWith(data: currentState.data.data?.copyWith(data: currentList));
              emit(_SuccessProviders(data: updatedData, hasMore: false));
            });
          }
        }
      }
    } catch (e) {
      emit(_ErrorProviders(message: '${local.errorGetProviders} $e'));
    }
  }

  Future<void> providerDetails(int id) async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      emit(const _LoadingProviderDetails());
      final result = await usecase.getMerchantDetails(id);
      result.fold((fialure) => emit(_ErrorProviderDetails(message: fialure.message)), (success) {
        emit(_SuccessProviderDetails(data: success.data!));
      });
    } catch (e) {
      emit(_ErrorProviderDetails(message: '${local.errorGetProviders} $e'));
    }
  }

  Future<void> merchantInteraction(int id, String type, String mobile) async {
    try {
      SmartDialog.showLoading();
      final result = await usecase.merchantInteraction(id, type);
      result.fold(
        (l) {
          logger.e('Failure Merchant Interaction ${l.message}');
          SmartDialog.dismiss();
          if (type.toLowerCase() == 'call') {
            _callNow(mobile);
          } else if (type.toLowerCase() == 'whatsapp') {
            _openWhatsApp(mobile);
          }
        },
        (r) {
          SmartDialog.dismiss();
          if (type.toLowerCase() == 'call') {
            _callNow(mobile);
          } else if (type.toLowerCase() == 'whatsapp') {
            _openWhatsApp(mobile);
          }
        },
      );
    } catch (e) {
      logger.e('Failure Merchant Interaction  $e');
      SmartDialog.dismiss();
      if (type.toLowerCase() == 'call') {
        _callNow(mobile);
      } else if (type.toLowerCase() == 'whatsapp') {
        _openWhatsApp(mobile);
      }
    }
  }

  void _callNow(String mobile) async {
    final Uri url = Uri(scheme: 'tel', path: '+$mobile');
    await launchUrl(url);
  }

  void _openWhatsApp(String mobile) async {
    final Uri url = Uri.parse('https://wa.me/$mobile');
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
