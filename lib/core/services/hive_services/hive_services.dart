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
    _initializeBoxModel<MerchantProfile>(boxName: BoxKeys.merchantData);
    _initializeBoxModel<UserFlow>(boxName: BoxKeys.userFlow);
    _initializeBoxModel<CustomerProfile>(boxName: BoxKeys.userData);
    await Future.wait([_initAppBox()]);
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
