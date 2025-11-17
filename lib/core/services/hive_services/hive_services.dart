import 'dart:developer';

import '../../../injection_container.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../presentation/customer_flow/layout/domain/model/customer_profile_model.dart';
import '../../../presentation/provider_flow/layout/domain/model/merchant_profile_model.dart';
import 'box_kes.dart';
import 'user_flow.dart';

class HiveServices {
  Future<void> init() async {
    await Hive.initFlutter();
    _registerAdapters();
    await _initializeBoxModel<MerchantProfile>(boxName: BoxKeys.merchantData);
    await _initializeBoxModel<UserFlow>(boxName: BoxKeys.userFlow);
    await _initializeBoxModel<CustomerProfile>(boxName: BoxKeys.userData);
    checkHives();
    await Future.wait([_initAppBox()]);
  }

  void checkHives() {
    sl.allReady().then((_) {
      log("MerchantProfile : ${sl.isRegistered<Box<MerchantProfile>>()}");
    });
    sl.allReady().then((_) {
      log("UserFlow : ${sl.isRegistered<Box<UserFlow>>()}");
    });
    sl.allReady().then((_) {
      log("CustomerProfile : ${sl.isRegistered<Box<CustomerProfile>>()}");
    });
  }

  void _registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter<UserFlow>(UserFlowAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter<MerchantProfile>(MerchantProfileAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter<Rating>(RatingAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter<Customer>(CustomerAdapter());
    }
    if (!Hive.isAdapterRegistered(4)) {
      Hive.registerAdapter<ImagesWork>(ImagesWorkAdapter());
    }
    if (!Hive.isAdapterRegistered(5)) {
      Hive.registerAdapter<CustomerProfile>(CustomerProfileAdapter());
    }
  }

  Future<void> _initAppBox() async {
    final appBox = await Hive.openBox(BoxKeys.appBox);
    sl.registerSingleton<Box>(appBox, instanceName: BoxKeys.appBox);
  }

  Future<void> _initializeBoxModel<T>({required String boxName}) async {
    final Box<T> box = await Hive.openBox<T>(boxName);
    if (!sl.isRegistered<Box<T>>()) {
      sl.registerSingleton<Box<T>>(box);
    }
  }
}
