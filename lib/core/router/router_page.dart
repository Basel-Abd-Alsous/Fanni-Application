import 'package:bot_toast/bot_toast.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/domain/model/param/register_param.dart';
import '../../presentation/auth/pages/choose_flow_screen.dart';
import '../../presentation/auth/pages/auth_screen.dart';
import '../../presentation/auth/pages/forget_password_screen.dart';
import '../../presentation/auth/pages/otp_screen.dart';
import '../../presentation/auth/pages/update_password_screen.dart';
import '../../presentation/customer_flow/layout/pages/layout_screen.dart';
import '../../presentation/customer_flow/providers/pages/all_providers_screen.dart';
import '../../presentation/customer_flow/providers/pages/provider_details_screen.dart';
import '../../presentation/notification/pages/notifications_screen.dart';
import '../../presentation/introduction/pages/introduction_screen.dart';
import '../../presentation/introduction/pages/stepper_screen.dart';
import '../../presentation/provider_flow/layout/pages/layout_screen.dart';
import '../../presentation/provider_flow/profile/pages/profile_screen.dart';
import '../../presentation/setting/pages/change_password_screen.dart';
import '../../presentation/setting/pages/content_screen.dart';
import '../../presentation/setting/pages/edit_mobil_screen.dart';
import '../../presentation/setting/pages/verify_mobile_screen.dart';
import '../../presentation/provider_flow/subscriptions/pages/subscription_screen.dart';
import '../../presentation/splash/pages/splash_screen.dart';
import '../context/global.dart';
import '../widget/widget_view_images.dart';
import 'router_key.dart';

final goRouter = GoRouter(
  initialLocation: RouterKey.splash,
  navigatorKey: GlobalContext.navigatorKey,
  observers: [BotToastNavigatorObserver()],
  debugLogDiagnostics: true,
  routes: [
    // * === Splash Routes ===
    RouterKey.pageRouter(path: RouterKey.splash, screen: const SplashScreen()),
    // * === Introduction Routes ===
    RouterKey.pageRouter(path: RouterKey.introduction, screen: const IntroductionScreen()),
    RouterKey.pageRouter(path: RouterKey.stepper, screen: const StepperScreen()),
    // * === Auth Routes ===
    RouterKey.pageRouter(path: RouterKey.chooseFlow, screen: const ChooseFlowScreen()),
    GoRoute(
      path: RouterKey.auth,
      pageBuilder: (context, state) {
        final isRegister = state.uri.queryParameters['isRegister'];
        return RouterKey.fadeTransitionPage(AuthScreen(isRegister: bool.tryParse(isRegister ?? 'false')), state);
      },
    ),
    GoRoute(
      path: RouterKey.otp,
      pageBuilder: (context, state) {
        final isRegister = state.uri.queryParameters['isRegister'];
        final extra = state.extra;
        if (extra is! RegisterParam) throw Exception('Missing or invalid register data in GoRoute extra');
        final registerParam = RegisterParam.fromJson(extra.toJson());
        return RouterKey.fadeTransitionPage(OtpScreen(registerParam: registerParam, isRegister: bool.tryParse(isRegister ?? 'false')), state);
      },
    ),
    RouterKey.pageRouter(path: RouterKey.forget, screen: const ForgetPasswordScreen()),
    GoRoute(
      path: RouterKey.updatePassword,
      pageBuilder: (context, state) {
        final mobile = state.uri.queryParameters['mobile'];
        return RouterKey.fadeTransitionPage(UpdatePasswordScreen(mobile: mobile!), state);
      },
    ),
    GoRoute(
      path: RouterKey.vendorInfo,
      pageBuilder: (context, state) {
        final isLayout = state.uri.queryParameters['isLayout'];
        return RouterKey.fadeTransitionPage(ProfileScreen(isLayout: bool.tryParse(isLayout ?? 'false')!), state);
      },
    ),
    GoRoute(
      path: RouterKey.content,
      pageBuilder: (context, state) {
        final content = state.uri.queryParameters['content'];
        return RouterKey.fadeTransitionPage(ContentScreen(content: content!), state);
      },
    ),
    GoRoute(
      path: RouterKey.verifyMobil,
      pageBuilder: (context, state) {
        final mobile = state.uri.queryParameters['mobile'];
        return RouterKey.fadeTransitionPage(VerifyMobileScreen(mobile: mobile!), state);
      },
    ),
    // * === Settings Routes ===
    RouterKey.pageRouter(path: RouterKey.editMobile, screen: EditMobilProviderScreen()),
    RouterKey.pageRouter(path: RouterKey.subscriptions, screen: const SubscriptionScreen()),
    RouterKey.pageRouter(path: RouterKey.changePassoword, screen: ChangePasswordScreen()),
    // * === Notification Routes ===
    RouterKey.pageRouter(path: RouterKey.notifications, screen: const NotificationCustomerScreen()),
    // !-------------------------------------- Customer Flow
    // * === Layout Routes ===
    RouterKey.pageRouter(path: RouterKey.layoutCustomer, screen: const LayoutCustomerScreen()),
    // * === Provider Routes ===
    GoRoute(
      path: RouterKey.providers,
      pageBuilder: (context, state) {
        final catId = state.uri.queryParameters['catId'];
        final title = state.uri.queryParameters['title'];
        return RouterKey.fadeTransitionPage(AllProvidersScreen(catId: int.tryParse(catId ?? '0') ?? 0, title: title), state);
      },
    ),
    GoRoute(
      path: RouterKey.providersDetails,
      pageBuilder: (context, state) {
        final id = state.uri.queryParameters['id'];
        return RouterKey.fadeTransitionPage(ProviderDetailsScreen(id: int.tryParse(id ?? '0') ?? 0), state);
      },
    ),
    GoRoute(
      path: RouterKey.images,
      pageBuilder: (context, state) {
        final title = state.uri.queryParameters['title'];
        final extra = state.extra as List<String>;
        return RouterKey.fadeTransitionPage(WidgetViewImages(title: title!, imagesUrl: extra), state);
      },
    ),
    // !-------------------------------------- Provider Flow
    // * === Layout Routes ===
    RouterKey.pageRouter(path: RouterKey.layoutProvider, screen: const LayoutProviderScreen()),
  ],
);
