
import 'log_util_platform_interface.dart';

class LogUtil {
  Future<String?> getPlatformVersion() {
    return LogUtilPlatform.instance.getPlatformVersion();
  }

}
