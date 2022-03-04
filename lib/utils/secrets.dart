import 'package:flutter/services.dart';
import 'dart:convert';

abstract class Secrets {
  static Map<String, dynamic>? _secrets;

  static Future<void> init() async {
    final String secretsAsString =
        await rootBundle.loadString('secrets/secrets.json');
    _secrets = json.decode(secretsAsString);
  }

  static String? getApiKey() {
    return _secrets?['apikey'];
  }
}
