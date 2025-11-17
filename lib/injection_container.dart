import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'core/notification/awesome_notification.service.dart';
import 'core/notification/fcm_setup.dart';
import 'firebase_options.dart';
import 'l10n/controller/localization.cubit.dart';

import 'core/services/hive_services/hive_services.dart';
import 'core/theme/controller/theme_cubit.dart';
import 'presentation/auth/controller/auth_cubit.dart';
import 'presentation/auth/domain/reoistory/auth_repoistory.dart';
import 'presentation/auth/domain/usecase/auth_usecase.dart';
import 'presentation/customer_flow/category/controller/category_cubit.dart';
import 'presentation/customer_flow/home/controller/home_customer_cubit.dart';
import 'presentation/customer_flow/home/domain/repoistory/home_repoistory.dart';
import 'presentation/customer_flow/home/domain/usecase/home_usecase.dart';
import 'presentation/customer_flow/layout/controller/layout_customer_cubit.dart';
import 'presentation/customer_flow/layout/domain/repoistory/layout_repoistory.dart';
import 'presentation/customer_flow/layout/domain/usecase/layout_usecase.dart';
import 'presentation/customer_flow/providers/controller/merchants_cubit.dart';
import 'presentation/customer_flow/providers/domain/repoistory/provider_repoistory.dart';
import 'presentation/customer_flow/providers/domain/usecase/provider_usecase.dart';
import 'presentation/customer_flow/reviews/controller/customer_reviews_cubit.dart';
import 'presentation/customer_flow/reviews/domain/repoistory/customer_reviews_repoistory.dart';
import 'presentation/customer_flow/reviews/domain/usecase/customer_reviews_usecase.dart';
import 'presentation/notification/controller/notification_cubit.dart';
import 'presentation/notification/domain/reoistroy/notification_repoistory.dart';
import 'presentation/notification/domain/usecase/notification_usecase.dart';
import 'presentation/introduction/controller/into_cubit.dart';
import 'presentation/provider_flow/home/controller/home_provider_cubit.dart';
import 'presentation/provider_flow/home/domain/repoistory/home_provider_repoistory.dart';
import 'presentation/provider_flow/home/domain/usecase/home_provider_usecase.dart';
import 'presentation/provider_flow/layout/controller/layout_cubit.dart';
import 'presentation/provider_flow/layout/domain/repoistory/layout_repoistory.dart';
import 'presentation/provider_flow/layout/domain/usecase/layout_usecase.dart';
import 'presentation/provider_flow/profile/controller/profile_provider_cubit.dart';
import 'presentation/provider_flow/profile/domain/repoistory/profile_provider_repoistory.dart';
import 'presentation/provider_flow/profile/domain/usecase/profile_provider_usecase.dart';
import 'presentation/provider_flow/reviews/controller/reviews_provider_cubit.dart';
import 'presentation/provider_flow/reviews/domain/repoistory/reviews_repoistory.dart';
import 'presentation/provider_flow/reviews/domain/usecase/reviews_usecase.dart';
import 'presentation/provider_flow/subscriptions/controller/subscription_provider_cubit.dart';
import 'presentation/provider_flow/subscriptions/domain/repoistory/subscription_repoistory.dart';
import 'presentation/provider_flow/subscriptions/domain/usecase/subscription_usecase.dart';
import 'presentation/setting/controller/setting_cubit.dart';
import 'presentation/setting/domain/repoistory/setting_repoistory.dart';
import 'presentation/setting/domain/usecase/setting_usecase.dart';
import 'presentation/splash/controller/splash_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // * ======================== Hive  ========================================
  sl.registerLazySingleton<HiveServices>(() => HiveServices());
  await sl<HiveServices>().init(); 
  // * ======================== Notifications  ========================================
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  sl.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
  await FcmHelper.initFcm();
  await NotificationsController.initializeLocalNotifications();
  await NotificationsController.initializeIsolateReceivePort();
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    await NotificationsController.initializeNotificationsEventListeners();
  });
  // * ======================== Dot env  ========================================
  await dotenv.load(fileName: ".env");
  // * ======================== Cubit ========================================
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());
  sl.registerFactory<LanguageCubit>(() => LanguageCubit());
  sl.registerFactory<SplashCubit>(() => SplashCubit());
  sl.registerFactory<IntoCubit>(() => IntoCubit());
  sl.registerFactory<AuthCubit>(() => AuthCubit(authUsecase: sl<AuthUsecase>()));
  sl.registerFactory<NotificationCubit>(() => NotificationCubit(notificaioUsecase: sl<NotificationUsecase>()));
  sl.registerFactory<SettingCubit>(() => SettingCubit(authUsecase: sl<AuthUsecase>(), usecase: sl<SettingUsecase>()));
  sl.registerFactory<LayoutCustomerCubit>(() => LayoutCustomerCubit(layoutUsecase: sl<LayoutCustomerUsecase>()));
  sl.registerFactory<HomeCustomerCubit>(() => HomeCustomerCubit(usecase: sl<HomeUsecase>(), layoutUsecase: sl<LayoutCustomerUsecase>()));
  sl.registerFactory<CategoryCubit>(() => CategoryCubit(usecaseProfile: sl<ProfileProviderUsecase>()));
  sl.registerFactory<LayoutProviderCubit>(() => LayoutProviderCubit(layoutUsecase: sl<LayoutProviderUsecase>()));
  sl.registerFactory<HomeProviderCubit>(() => HomeProviderCubit(homeProviderUsecase: sl<HomeProviderUsecase>(), layoutUsecase: sl<LayoutProviderUsecase>()));
  sl.registerFactory<ReviewsProviderCubit>(() => ReviewsProviderCubit(usecase: sl<ReviewsUsecaseProvider>(), layoutUsecase: sl<LayoutProviderUsecase>()));
  sl.registerFactory<ProfileProviderCubit>(() => ProfileProviderCubit(layoutUsecase: sl<LayoutProviderUsecase>(), usecase: sl<ProfileProviderUsecase>()));
  sl.registerFactory<SubscriptionProviderCubit>(() => SubscriptionProviderCubit(usecase: sl<SubscriptionUsecase>()));
  sl.registerFactory<CustomerReviewsCubit>(() => CustomerReviewsCubit(providerUsecase: sl<ProviderUsecase>(), usecase: sl<CustomerReviewsUsecase>()));
  sl.registerFactory<MerchantsCubit>(
    () => MerchantsCubit(usecase: sl<ProviderUsecase>()),
  ); // * ======================== UseCase ========================================
  sl.registerLazySingleton<CustomerReviewsUsecase>(() => CustomerReviewsUsecase(repoistory: sl<CustomerReviewsRepoistory>()));
  sl.registerLazySingleton<HomeProviderUsecase>(() => HomeProviderUsecase(repoistory: sl<HomeProviderRepoistory>()));
  sl.registerLazySingleton<NotificationUsecase>(() => NotificationUsecase(repoistory: sl<NotificationRepoistory>()));
  sl.registerLazySingleton<AuthUsecase>(() => AuthUsecase(authRepoistory: sl<AuthRepoistory>()));
  sl.registerLazySingleton<LayoutCustomerUsecase>(() => LayoutCustomerUsecase(layoutRepoistory: sl<LayoutCustomerRepoistory>()));
  sl.registerLazySingleton<LayoutProviderUsecase>(() => LayoutProviderUsecase(layoutRepoistory: sl<LayoutProviderRepoistory>()));
  sl.registerLazySingleton<ReviewsUsecaseProvider>(() => ReviewsUsecaseProvider(repoistory: sl<ReviewsRepoistoryProvider>()));
  sl.registerLazySingleton<ProfileProviderUsecase>(() => ProfileProviderUsecase(repoistory: sl<ProfileProviderRepoistory>()));
  sl.registerLazySingleton<SubscriptionUsecase>(() => SubscriptionUsecase(repoistory: sl<SubscriptionRepoistory>()));
  sl.registerLazySingleton<SettingUsecase>(() => SettingUsecase(repoistory: sl<SettingRepoistory>()));
  sl.registerLazySingleton<HomeUsecase>(() => HomeUsecase(repoistory: sl<HomeRepoistory>()));
  sl.registerLazySingleton<ProviderUsecase>(() => ProviderUsecase(repoistory: sl<ProviderRepoistory>()));
  // * ======================== Repository ========================================
  sl.registerLazySingleton<CustomerReviewsRepoistory>(() => CustomerReviewsRepoistoryImpl());
  sl.registerLazySingleton<HomeProviderRepoistory>(() => HomeProviderRepoistoryImpl());
  sl.registerLazySingleton<NotificationRepoistory>(() => NotificationRepoistoryImpl());
  sl.registerLazySingleton<AuthRepoistory>(() => AuthRepoistoryImpl());
  sl.registerLazySingleton<LayoutCustomerRepoistory>(() => LayoutCustomerRepoistoryImpl());
  sl.registerLazySingleton<LayoutProviderRepoistory>(() => LayoutProviderRepoistoryImpl());
  sl.registerLazySingleton<ReviewsRepoistoryProvider>(() => ReviewsRepoistoryProviderImpl());
  sl.registerLazySingleton<ProfileProviderRepoistory>(() => ProfileProviderRepoistoryImpl());
  sl.registerLazySingleton<SubscriptionRepoistory>(() => SubscriptionRepoistoryImpl());
  sl.registerLazySingleton<SettingRepoistory>(() => SettingRepoistoryImpl());
  sl.registerLazySingleton<HomeRepoistory>(() => HomeRepoistoryImpl());
  sl.registerLazySingleton<ProviderRepoistory>(() => ProviderRepoistoryImpl());
}
