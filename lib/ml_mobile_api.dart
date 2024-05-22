library modus_loyalty_mobile_api;

import 'package:shared_preferences/shared_preferences.dart';

class MLMApi {
  const MLMApi._();

  // static const String baseUrl = "v2.infonito.eu";
  static const String baseUrl = "v2-dev.infonito.eu";

  static late SharedPreferences? cacheManager;
  static late String pApp;
  static late String pAuth;

  static Future<void> init({
    SharedPreferences? sharedPreferences,
    required String pAppSetValue,
    required String pAuthSetValue,
  }) async {
    cacheManager = sharedPreferences;
    pApp = pAppSetValue;
    pAuth = pAuthSetValue;
  }
}
