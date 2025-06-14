import 'package:logging/logging.dart';

mixin Logging {
  Logger? _logger;

  Logger get log => _logger ??= Logger(runtimeType.toString());
}
