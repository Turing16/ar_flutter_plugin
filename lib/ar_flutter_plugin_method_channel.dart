import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ar_flutter_plugin_platform_interface.dart';

/// An implementation of [ArFlutterPluginPlatform] that uses method channels.
class MethodChannelArFlutterPlugin extends ArFlutterPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ar_flutter_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
