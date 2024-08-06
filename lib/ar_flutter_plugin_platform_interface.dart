import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ar_flutter_plugin_method_channel.dart';

abstract class ArFlutterPluginPlatform extends PlatformInterface {
  /// Constructs a ArFlutterPluginPlatform.
  ArFlutterPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static ArFlutterPluginPlatform _instance = MethodChannelArFlutterPlugin();

  /// The default instance of [ArFlutterPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelArFlutterPlugin].
  static ArFlutterPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ArFlutterPluginPlatform] when
  /// they register themselves.
  static set instance(ArFlutterPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
