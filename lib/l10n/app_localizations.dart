import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @introWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Fanni'**
  String get introWelcomeTitle;

  /// No description provided for @introWelcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'Finding reliable service providers has never been easier. We’ve gathered trusted experts in one place — just a few taps away!'**
  String get introWelcomeDescription;

  /// No description provided for @introChooseServiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Service'**
  String get introChooseServiceTitle;

  /// No description provided for @introChooseServiceDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore a wide range of services — from home repairs to maintenance and more. Browse verified providers and choose the one that fits your needs.'**
  String get introChooseServiceDescription;

  /// No description provided for @introTrustedExpertsTitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted & Verified Experts'**
  String get introTrustedExpertsTitle;

  /// No description provided for @introTrustedExpertsDescription.
  ///
  /// In en, this message translates to:
  /// **'Verified & reviewed experts'**
  String get introTrustedExpertsDescription;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// No description provided for @mobileEmpty.
  ///
  /// In en, this message translates to:
  /// **'Mobile number cannot be empty'**
  String get mobileEmpty;

  /// No description provided for @mobileInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid mobile number'**
  String get mobileInvalid;

  /// No description provided for @emailEmpty.
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty'**
  String get emailEmpty;

  /// No description provided for @emailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get emailInvalid;

  /// No description provided for @passwordEmpty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get passwordEmpty;

  /// No description provided for @youmostbeloginforshowthissection.
  ///
  /// In en, this message translates to:
  /// **'You most be login for show this section!'**
  String get youmostbeloginforshowthissection;

  /// No description provided for @passwordLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordLength;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @chooseDescription.
  ///
  /// In en, this message translates to:
  /// **'Select your user type to continue in the app'**
  String get chooseDescription;

  /// No description provided for @customers.
  ///
  /// In en, this message translates to:
  /// **'Customers'**
  String get customers;

  /// No description provided for @serviceProvider.
  ///
  /// In en, this message translates to:
  /// **'Service Provider'**
  String get serviceProvider;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'© 2025 Fanni Application. All rights reserved.'**
  String get copyright;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @containueAsGust.
  ///
  /// In en, this message translates to:
  /// **'Continue As Guest'**
  String get containueAsGust;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @loginAsVendor.
  ///
  /// In en, this message translates to:
  /// **'Login As Provider'**
  String get loginAsVendor;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPassword;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgetPassword;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account? '**
  String get dontHaveAccount;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @verifyYourNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify your number'**
  String get verifyYourNumber;

  /// No description provided for @enterOtpBelow.
  ///
  /// In en, this message translates to:
  /// **'Enter your OTP code below'**
  String get enterOtpBelow;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Don\'t receive the code?'**
  String get didntReceiveCode;

  /// No description provided for @resendNewCode.
  ///
  /// In en, this message translates to:
  /// **'Resend a new code'**
  String get resendNewCode;

  /// No description provided for @enterYourNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your new password'**
  String get enterYourNewPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @enterYourMobileToFindAccount.
  ///
  /// In en, this message translates to:
  /// **'Enter your mobile number to find your account'**
  String get enterYourMobileToFindAccount;

  /// No description provided for @information.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get information;

  /// No description provided for @major.
  ///
  /// In en, this message translates to:
  /// **'Major'**
  String get major;

  /// No description provided for @selectYourMajor.
  ///
  /// In en, this message translates to:
  /// **'Select Your Major'**
  String get selectYourMajor;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @selectCity.
  ///
  /// In en, this message translates to:
  /// **'Select City'**
  String get selectCity;

  /// No description provided for @inspectionFee.
  ///
  /// In en, this message translates to:
  /// **'Inspection Fee'**
  String get inspectionFee;

  /// No description provided for @photoOfWork.
  ///
  /// In en, this message translates to:
  /// **'Photos of Work'**
  String get photoOfWork;

  /// No description provided for @selectPhotoOfWork.
  ///
  /// In en, this message translates to:
  /// **'Select Your Photo of Work'**
  String get selectPhotoOfWork;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutYou.
  ///
  /// In en, this message translates to:
  /// **'About you ....'**
  String get aboutYou;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @totalReviews.
  ///
  /// In en, this message translates to:
  /// **'Total Reviews'**
  String get totalReviews;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @editMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Edit Mobile Number'**
  String get editMobileNumber;

  /// No description provided for @subscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @deleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get deleteAccountConfirm;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @verifyNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify Number'**
  String get verifyNumber;

  /// No description provided for @didNotReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive the code?'**
  String get didNotReceiveCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend a new code'**
  String get resendCode;

  /// No description provided for @subscriptionDescription.
  ///
  /// In en, this message translates to:
  /// **'Enjoy 3 months free. Afterward, you’ll need to subscribe to any package to keep displaying your services to users.'**
  String get subscriptionDescription;

  /// No description provided for @packages.
  ///
  /// In en, this message translates to:
  /// **'Packages'**
  String get packages;

  /// No description provided for @package1Title.
  ///
  /// In en, this message translates to:
  /// **'1 month - \$19.99'**
  String get package1Title;

  /// No description provided for @package1Description.
  ///
  /// In en, this message translates to:
  /// **'Get full access for 1 month'**
  String get package1Description;

  /// No description provided for @continueToPayments.
  ///
  /// In en, this message translates to:
  /// **'Continue To Payments'**
  String get continueToPayments;

  /// No description provided for @paymentsMethods.
  ///
  /// In en, this message translates to:
  /// **'Payment Methods'**
  String get paymentsMethods;

  /// No description provided for @creditCard.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get creditCard;

  /// No description provided for @cliq.
  ///
  /// In en, this message translates to:
  /// **'CliQ'**
  String get cliq;

  /// No description provided for @cliqSubscription.
  ///
  /// In en, this message translates to:
  /// **'CliQ Subscription'**
  String get cliqSubscription;

  /// No description provided for @merchantName.
  ///
  /// In en, this message translates to:
  /// **'Merchant Name - اسم التاجر'**
  String get merchantName;

  /// No description provided for @fanniApplication.
  ///
  /// In en, this message translates to:
  /// **'Fanni Application'**
  String get fanniApplication;

  /// No description provided for @depositEwallet.
  ///
  /// In en, this message translates to:
  /// **'You can deposit using any e-wallet'**
  String get depositEwallet;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @subscriptionSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Subscription Submitted'**
  String get subscriptionSubmitted;

  /// No description provided for @subscriptionThankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you for subscribing with us. Your account will be activated shortly.'**
  String get subscriptionThankYou;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @calls.
  ///
  /// In en, this message translates to:
  /// **'Calls'**
  String get calls;

  /// No description provided for @profileViews.
  ///
  /// In en, this message translates to:
  /// **'Profile Views'**
  String get profileViews;

  /// No description provided for @whatsApps.
  ///
  /// In en, this message translates to:
  /// **'WhatsApps'**
  String get whatsApps;

  /// No description provided for @welcome2.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome2;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @profileVisible.
  ///
  /// In en, this message translates to:
  /// **'Your profile is now visible to all customers.'**
  String get profileVisible;

  /// No description provided for @updatePassword.
  ///
  /// In en, this message translates to:
  /// **'Update Password'**
  String get updatePassword;

  /// No description provided for @oldPassword.
  ///
  /// In en, this message translates to:
  /// **'Old Password'**
  String get oldPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @passwordsNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsNotMatch;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @reviewIntro.
  ///
  /// In en, this message translates to:
  /// **'Yesterday you contacted these providers. Tell us what happened. Your feedback helps us improve reliability.'**
  String get reviewIntro;

  /// No description provided for @plumbing.
  ///
  /// In en, this message translates to:
  /// **'Plumbing'**
  String get plumbing;

  /// No description provided for @calledAt.
  ///
  /// In en, this message translates to:
  /// **'Called at '**
  String get calledAt;

  /// No description provided for @dontAnswer.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Answer'**
  String get dontAnswer;

  /// No description provided for @answeredNoJob.
  ///
  /// In en, this message translates to:
  /// **'Answered, No Job'**
  String get answeredNoJob;

  /// No description provided for @jobCompleted.
  ///
  /// In en, this message translates to:
  /// **'Job Completed'**
  String get jobCompleted;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'(optional)'**
  String get optional;

  /// No description provided for @enterComments.
  ///
  /// In en, this message translates to:
  /// **'Enter your comments ...'**
  String get enterComments;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @providers.
  ///
  /// In en, this message translates to:
  /// **'Providers'**
  String get providers;

  /// No description provided for @electricians.
  ///
  /// In en, this message translates to:
  /// **'Electricians'**
  String get electricians;

  /// No description provided for @searchByProviderName.
  ///
  /// In en, this message translates to:
  /// **'Search by provider name ...'**
  String get searchByProviderName;

  /// No description provided for @callNow.
  ///
  /// In en, this message translates to:
  /// **'Call Now'**
  String get callNow;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// No description provided for @unActive.
  ///
  /// In en, this message translates to:
  /// **'UnActive'**
  String get unActive;

  /// No description provided for @activeMsg.
  ///
  /// In en, this message translates to:
  /// **'Your profile is now hidden from customers.'**
  String get activeMsg;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @allProviders.
  ///
  /// In en, this message translates to:
  /// **'All Providers'**
  String get allProviders;

  /// No description provided for @noProviders.
  ///
  /// In en, this message translates to:
  /// **'No Providers Available'**
  String get noProviders;

  /// No description provided for @noReviews.
  ///
  /// In en, this message translates to:
  /// **'No Reviews Available'**
  String get noReviews;

  /// No description provided for @noReviewsDesc.
  ///
  /// In en, this message translates to:
  /// **'No reviews have been added yet'**
  String get noReviewsDesc;

  /// No description provided for @noProvidersDesc.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t find any providers at the moment. Please check back later.'**
  String get noProvidersDesc;

  /// No description provided for @noCategory.
  ///
  /// In en, this message translates to:
  /// **'No Category Available'**
  String get noCategory;

  /// No description provided for @noCategoryDesc.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t find any category at the moment. Please check back later.'**
  String get noCategoryDesc;

  /// No description provided for @errorGetCategories.
  ///
  /// In en, this message translates to:
  /// **'Error while fetching categories'**
  String get errorGetCategories;

  /// No description provided for @failureGetProfile.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve profile'**
  String get failureGetProfile;

  /// No description provided for @errorGetBanners.
  ///
  /// In en, this message translates to:
  /// **'Error while fetching banners'**
  String get errorGetBanners;

  /// No description provided for @errorGetProviders.
  ///
  /// In en, this message translates to:
  /// **'Error while fetching providers'**
  String get errorGetProviders;

  /// No description provided for @errorGetRatings.
  ///
  /// In en, this message translates to:
  /// **'Error while fetching ratings'**
  String get errorGetRatings;

  /// No description provided for @errorAddRating.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while adding a rating'**
  String get errorAddRating;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications available'**
  String get noNotifications;

  /// No description provided for @noNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t find any notifications right now. Please check back later.'**
  String get noNotificationsDesc;

  /// No description provided for @failureChangeProviderStatus.
  ///
  /// In en, this message translates to:
  /// **'Failed to change provider status'**
  String get failureChangeProviderStatus;

  /// No description provided for @updateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Updated successfully'**
  String get updateSuccess;

  /// No description provided for @profileUpdateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdateSuccess;

  /// No description provided for @currencyJOD.
  ///
  /// In en, this message translates to:
  /// **'JOD'**
  String get currencyJOD;

  /// No description provided for @passwordUpdateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password updated successfully'**
  String get passwordUpdateSuccess;

  /// No description provided for @otpVerifyError.
  ///
  /// In en, this message translates to:
  /// **'OTP verification failed'**
  String get otpVerifyError;

  /// No description provided for @mobileUpdateError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while updating the mobile number'**
  String get mobileUpdateError;

  /// No description provided for @mobileUpdateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Mobile number updated successfully'**
  String get mobileUpdateSuccess;

  /// No description provided for @contentFetchError.
  ///
  /// In en, this message translates to:
  /// **'Error while fetching content'**
  String get contentFetchError;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
