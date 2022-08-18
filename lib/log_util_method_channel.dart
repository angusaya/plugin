import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'log_util_platform_interface.dart';

/// An implementation of [LogUtilPlatform] that uses method channels.
class MethodChannelLogUtil extends LogUtilPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('log_util');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
