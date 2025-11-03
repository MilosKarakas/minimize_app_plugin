import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MinimizeApp {
  static const MethodChannel _channel = MethodChannel('minimize_app');

  static Future<void> minimizeApp() async {
    await _channel
        .invokeMethod('minimizeApp')
        .catchError((dynamic error) => debugPrint("Error: $error"));
  }
}
