import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../main.dart';
import '../../injection_container.dart';
import '../services/hive_services/box_kes.dart';
import 'awesome_notification.service.dart';

class FcmHelper {
  FcmHelper._();
  static late FirebaseMessaging messaging;

  static Future<void> initFcm() async {
    try {
      messaging = FirebaseMessaging.instance;
      await messaging.requestPermission();
      await messaging.setAutoInitEnabled(true);
      await _setupFcmNotificationSettings();
      String? token;
      if (Platform.isIOS) {
        token = await sl<FirebaseMessaging>().getAPNSToken();
        log('APNST Token :- $token');
        sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.fcmtoken, token);
        sl<FirebaseMessaging>().subscribeToTopic('users');
      } else {
        token = await sl<FirebaseMessaging>().getToken();
        log('FCM Token :- $token');
        sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.fcmtoken, token);
        sl<FirebaseMessaging>().subscribeToTopic('users');
      }
      FirebaseMessaging.onMessage.listen(_fcmForegroundHandler);
      FirebaseMessaging.onBackgroundMessage(_fcmBackgroundHandler);
    } catch (error) {
      logger.e("FCM Error : ${error.toString()}");
    }
  }

  static Future<void> _setupFcmNotificationSettings() async {
    messaging.setForegroundNotificationPresentationOptions(alert: true, sound: true, badge: true);

    //NotificationSettings settings
    await messaging.requestPermission(alert: true, badge: true, sound: true, provisional: true);
  }

  @pragma('vm:entry-point')
  static Future<void> _fcmBackgroundHandler(RemoteMessage message) async {
    logger.e(message.data.cast());
    NotificationsController.createNewNotification(
      title: message.notification!.title!,
      body: message.notification!.body!,
      bigPicture: '',
      payload: message.data.cast(),
    );
  }

  //handle fcm notification when app is open
  static Future<void> _fcmForegroundHandler(RemoteMessage message) async {
    logger.e(message.data.cast());
    NotificationsController.createNewNotification(
      title: message.notification!.title!,
      body: message.notification!.body!,
      bigPicture: '',
      payload: message.data.cast(),
    );
  }
}
