#import "SimpleNativeToastPlugin.h"
#if __has_include(<simple_native_toast/simple_native_toast-Swift.h>)
#import <simple_native_toast/simple_native_toast-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "simple_native_toast-Swift.h"
#endif

@implementation SimpleNativeToastPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleNativeToastPlugin registerWithRegistrar:registrar];
}
@end
