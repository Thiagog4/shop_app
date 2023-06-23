import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Store {
  static Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<bool> SaveMap(String key, Map<String, dynamic> value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, jsonEncode(value));
  }

  static Future<String> getString(String key,
      [String defaultValue = '']) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? defaultValue;
  }

  static Future<Map<String, dynamic>> getMap(String key) async {
    try {
      return jsonDecode(await getString(key) ?? '{}');
    } catch (e) {
      return {};
    }
  }

  static Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
