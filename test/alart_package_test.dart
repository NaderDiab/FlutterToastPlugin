import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alart_package/alart_package.dart';

void main() {
  const MethodChannel channel = MethodChannel('alart_package');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    //expect(await AlartPackage.platformVersion, '42');
  });
}
