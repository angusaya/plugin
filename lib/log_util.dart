
import 'log_util_platform_interface.dart';

class LogUtil {
  String getPlatformVersion() {
    return LogUtilPlatform.instance.getPlatformVersion();
  }

}
