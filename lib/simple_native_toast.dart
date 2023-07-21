import 'simple_native_toast_platform_interface.dart';

class SimpleNativeToast {
  Future<String?> getPlatformVersion() {
    return SimpleNativeToastPlatform.instance.getPlatformVersion();
  }

  Future<void> showToast(String msg) {
    return SimpleNativeToastPlatform.instance.showToast(msg);
  }
}
