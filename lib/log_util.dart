
import 'log_util_platform_interface.dart';

class LogUtil {
  Future<String?> getPlatformVersion() {
    print('hello');
    return LogUtilPlatform.instance.getPlatformVersion();
  }
}
