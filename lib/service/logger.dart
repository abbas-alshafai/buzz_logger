
import '../models/log.dart';
import 'logger_factory.dart';

final LogService _logger = LoggerServiceFactory.instance.getLogger();

class Logger {
  /// In Release mode, the routine of this method will be bypassed.
  /// This method will operate only in debug and profile modes
  static bool debug(final String msg) {
    assert(() {
      print(msg);
      return true;
    }());
    return true;
  }

  static void i(String msg){
    log(msg: msg);
  }


  static void d(String msg){
    log(log: Log.d(msg: msg));
  }

  static void log({final String? msg, Log? log, StackTrace? stack,}) {
    log ??= Log.i(msg ?? 'log msg is missing', stacktrace: stack);

    _logger.log(log);
    // TODO
    // ProviderContainer().read(loggerProvider(log));
  }

  static void error(StackTrace stackTrace, String errMsg) {
    log(
        log: Log(
          msg: errMsg,
          stacktrace: stackTrace,
          logLevel: LogLevel.ERROR,
        ));
  }

  // static Result<T> result<T>(Result<T> result) {
  //   if (result.log != null) log(log: result.log);
  //
  //   return result;
  // }
}
