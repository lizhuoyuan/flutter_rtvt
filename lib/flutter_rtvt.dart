
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterRtvt {
  static const MethodChannel _channel = MethodChannel('flutter_rtvt');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
