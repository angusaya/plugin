import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:log_util/log_util_method_channel.dart';

void main() {
  MethodChannelLogUtil platform = MethodChannelLogUtil();
  const MethodChannel channel = MethodChannel('log_util');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
