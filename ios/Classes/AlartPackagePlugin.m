#import "AlartPackagePlugin.h"
#if __has_include(<alart_package/alart_package-Swift.h>)
#import <alart_package/alart_package-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "alart_package-Swift.h"
#endif

@implementation AlartPackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAlartPackagePlugin registerWithRegistrar:registrar];
}
@end
