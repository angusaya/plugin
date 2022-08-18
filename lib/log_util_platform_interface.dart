import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'log_util_method_channel.dart';

abstract class LogUtilPlatform extends PlatformInterface {
  /// Constructs a LogUtilPlatform.
  LogUtilPlatform() : super(token: _token);

  static final Object _token = Object();

  static LogUtilPlatform _instance = MethodChannelLogUtil();

  /// The default instance of [LogUtilPlatform] to use.
  ///
  /// Defaults to [MethodChannelLogUtil].
  static LogUtilPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LogUtilPlatform] when
  /// they register themselves.
  static set instance(LogUtilPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    return _instance.getPlatformVersion();
  }
}
