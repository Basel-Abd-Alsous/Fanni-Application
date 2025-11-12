import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppLinks {
  AppLinks._();

  // ============================== Server URL ==============================
  static final String server = dotenv.env['SERVER']!;
  static final String content = dotenv.env['CONTENT']!;

  // ============================= Customers URL =============================
  // ============================== Auth URL ==============================
  static final String registerCustomer = dotenv.env['REGISTER_CUSTOMER']!;
  static final String loginCustomer = dotenv.env['LOGIN_CUSTOMER']!;
  static final String forgetCustomer = dotenv.env['FORGET_CUSTOMER']!;
  static final String resendOTPCustomer = dotenv.env['RESEND_OTP_CUSTOMER']!;
  static final String verifyOtpCustomer = dotenv.env['VERIFY_OTP_CUSTOMER']!;
  static final String editPasswordCustomer = dotenv.env['EDIT_PASSWORD_CUSTOMER']!;

  // ============================== Home URL ==============================
  static final String banners = dotenv.env['BANNARS']!;

  // ============================== Category URL ==============================
  static final String categories = dotenv.env['CATEGORIES']!;

  // ============================== Provider URL ==============================

  // ============================== Setting URL ==============================
  static final String notifications = dotenv.env['NOTIFICATIONS']!;

  // ============================= Providers URL =============================
  // ============================== Auth URL ==============================
  static final String loginProvider = dotenv.env['LOGIN_PROVIDER']!;
  static final String registerProvider = dotenv.env['REGISTER_PROVIDER']!;
  static final String forgetProvider = dotenv.env['FORGET_PROVIDER']!;
  static final String resendOTPProvider = dotenv.env['RESEND_OTP_PROVIDER']!;
  static final String verifyOtpProvider = dotenv.env['VERIFY_OTP_PROVIDER']!;
  static final String editPasswordProvider = dotenv.env['EDIT_PASSWORD_PROVIDER']!;

  // ============================== Lookup URLs ==============================
  static final String major = dotenv.env['MAJOR']!;
  static final String city = dotenv.env['CITY']!;
  static final String area = dotenv.env['AREA']!;

  // ============================== Setting URL ==============================
  static final String providerProfile = dotenv.env['POVIDER_PROFILE']!;
  static final String updateProvicerProfile = dotenv.env['UPDATE_PROFILE']!;
  static final String updatePassword = dotenv.env['UPDATE_PASSWORD']!;
  static final String deleteNotification = dotenv.env['DELETE_NOTIFICATION']!;
  static final String packages = dotenv.env['PAKAGES']!;

  // ============================== Status URL ==============================
  static final String status = dotenv.env['STATUS']!;
  static final String changeStatus = dotenv.env['CHANGE_STATUS']!;
  // ============================== Reviews URL ==============================
  static final String uploadImageProvider = dotenv.env['UPLOAD_IMAGE_PROVIDER']!;
  static final String cliqInfo = dotenv.env['CLIQ_INFO']!;
  static final String changeMobile = dotenv.env['CHANGE_MOBILE']!;
  static final String allProviders = dotenv.env['ALL_PROVIDERS']!;
  static final String providerDetails = dotenv.env['PROVIDERS_DETAILS']!;
  static final String providerInteraction = dotenv.env['PROVIDERS_INTERACTION']!;
  static final String ratingMerchant = dotenv.env['RATING_MERCHANT']!;
  static final String allCustomerRating = dotenv.env['ALL_CUSTOMER_RATING']!;
  static final String customerProfile = dotenv.env['CUSTOMER_PROFILE']!;
  
  // ============================== Helper ==============================
  /// Returns a full API URL combining [server] with [path].
  static String full(String path) => '$server$path';
}
