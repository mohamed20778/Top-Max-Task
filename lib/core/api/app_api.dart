import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppApi {
  static String get _baseUrl {
    final value = dotenv.env['BASE_URL'];
    if (value == null || value.isEmpty) {
      throw StateError('BASE_URL is not set. Did you load .env?');
    }
    return value;
  }

  static String get generateOtp => "$_baseUrl/user/request-otp";
  static String get verifyOtp => "$_baseUrl/user/verify-otp";
  static String get resendOtp => "$_baseUrl/user/resend-otp";
  static String get mobileHome => "$_baseUrl/mobile/home";
  static String toggleSaveJob(int jobId) => "$_baseUrl/user/jobs/$jobId/toggle-save";
  static String get searchJobs => "$_baseUrl/home/search";
  static String get savedItems => "$_baseUrl/user/saved-items";
}

class AppApiHeaders {
  static const String acceptKey = 'Accept';
  static const String acceptLanguageKey = 'Accept-Language';
  static const String contentTypeKey = 'Content-Type';

  static const String applicationJson = 'application/json';
}
