import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'firebase_options.dart';
import 'l10n/l10n.dart';
import 'core/theme/util.dart';
import 'core/theme/theme.dart';
import 'injection_container.dart';
import 'core/router/router_page.dart';
import 'core/theme/controller/theme_cubit.dart';
import 'l10n/controller/localization.cubit.dart';
import 'core/services/hive_services/box_kes.dart';
import 'core/services/hive_services/hive_services.dart';
import 'presentation/provider_flow/layout/controller/layout_cubit.dart';
import 'presentation/customer_flow/layout/controller/layout_customer_cubit.dart';

var logger = Logger(printer: PrettyPrinter(methodCount: 2, errorMethodCount: 8, lineLength: 120, colors: true, printEmojis: true));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await HiveServices().init();
  await init();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<LanguageCubit>()),
        BlocProvider(create: (context) => sl<ThemeCubit>()),
        BlocProvider(create: (context) => sl<LayoutCustomerCubit>()),
        BlocProvider(create: (context) => sl<LayoutProviderCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, theme) {
          return BlocBuilder<LanguageCubit, Locale>(
            builder:
                (context, locale) => ValueListenableBuilder(
                  valueListenable: sl<Box>(instanceName: BoxKeys.appBox).listenable(),
                  builder: (context, box, _) {
                    bool theme = box.get(BoxKeys.theme, defaultValue: false);
                    String lang = box.get(BoxKeys.lang, defaultValue: 'ar');
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      title: 'Fanni Application',
                      theme: theme == false ? MaterialTheme(textTheme).light() : MaterialTheme(textTheme).dark(),
                      themeMode: theme == false ? ThemeMode.light : ThemeMode.dark,
                      locale: Locale(lang),
                      localizationsDelegates: L10n.localizationsDelegates,
                      supportedLocales: L10n.all,
                      routerConfig: goRouter,
                      builder: (context, child) {
                        child = BotToastInit()(context, child);
                        child = FlutterSmartDialog.init()(context, child);
                        return child;
                      },
                    );
                  },
                ),
          );
        },
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
}
