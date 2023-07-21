import 'package:flutter_test/flutter_test.dart';
import 'package:simple_native_toast/simple_native_toast.dart';
import 'package:simple_native_toast/simple_native_toast_platform_interface.dart';
import 'package:simple_native_toast/simple_native_toast_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSimpleNativeToastPlatform
    with MockPlatformInterfaceMixin
    implements SimpleNativeToastPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> showToast(String msg) {
    throw UnimplementedError();
  }
}

void main() {
  final SimpleNativeToastPlatform initialPlatform =
      SimpleNativeToastPlatform.instance;

  test('$MethodChannelSimpleNativeToast is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSimpleNativeToast>());
  });

  test('getPlatformVersion', () async {
    SimpleNativeToast simpleNativeToastPlugin = SimpleNativeToast();
    MockSimpleNativeToastPlatform fakePlatform =
        MockSimpleNativeToastPlatform();
    SimpleNativeToastPlatform.instance = fakePlatform;

    expect(await simpleNativeToastPlugin.getPlatformVersion(), '42');
  });
}
