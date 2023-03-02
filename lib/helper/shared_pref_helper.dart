import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  // static Future<void> setLoggedIn() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool("isLoggedIn", false);
  // }

  // static Future<bool> isLoggedIn() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getBool("isLoggedIn") ?? false;
  // }
  static SharedPreferences? prefs;
}
