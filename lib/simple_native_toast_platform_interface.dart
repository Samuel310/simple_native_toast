import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_native_toast_method_channel.dart';

abstract class SimpleNativeToastPlatform extends PlatformInterface {
  /// Constructs a SimpleNativeToastPlatform.
  SimpleNativeToastPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleNativeToastPlatform _instance = MethodChannelSimpleNativeToast();

  /// The default instance of [SimpleNativeToastPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleNativeToast].
  static SimpleNativeToastPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleNativeToastPlatform] when
  /// they register themselves.
  static set instance(SimpleNativeToastPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> showToast(String msg) {
    throw UnimplementedError('showToast() has not been implemented.');
  }
}
