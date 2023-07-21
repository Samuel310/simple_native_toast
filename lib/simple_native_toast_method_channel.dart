import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_native_toast_platform_interface.dart';

/// An implementation of [SimpleNativeToastPlatform] that uses method channels.
class MethodChannelSimpleNativeToast extends SimpleNativeToastPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_native_toast');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> showToast(String msg) async {
    await methodChannel.invokeMethod<void>('showToast', {"msg": msg});
  }
}
