import 'package:flutter_test/flutter_test.dart';
import 'package:log_util/log_util.dart';
import 'package:log_util/log_util_platform_interface.dart';
import 'package:log_util/log_util_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLogUtilPlatform 
    with MockPlatformInterfaceMixin
    implements LogUtilPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LogUtilPlatform initialPlatform = LogUtilPlatform.instance;

  test('$MethodChannelLogUtil is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLogUtil>());
  });

  test('getPlatformVersion', () async {
    LogUtil logUtilPlugin = LogUtil();
    MockLogUtilPlatform fakePlatform = MockLogUtilPlatform();
    LogUtilPlatform.instance = fakePlatform;
  
    expect(await logUtilPlugin.getPlatformVersion(), '42');
  });
}
