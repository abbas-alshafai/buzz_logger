import 'dart:collection';
import 'package:buzz_utils/buzz_utils.dart';
import 'package:logger/logger.dart';
import '../models/log.dart';

class LoggerServiceFactory {
  LoggerServiceFactory._();

  static final LoggerServiceFactory instance = LoggerServiceFactory._();

  LogService getLogger() {
    return _LogServiceImpl();
  }
}

abstract class LogService {
  void _v({final String msg, final Log log});

  void _d({final Log log});

  void _i({final String? msg, final Log log});

  void _w({final String? msg, final Log log});

  void _e({final String? msg, final Log log});

  void log(final Log log);
}

class _LogServiceImpl implements LogService {

  final Queue<Log> history = Queue();

  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 10,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  @override
  void _d({Log? log}) {
    _logger.d(log?.msg, null, log?.stacktrace);
  }

  @override
  void _e({final String? msg, Log? log}) {
    log ??= Log(msg: msg);
    assert(StringUtils.instance.isNotBlank(log.msg));
    _logger.e(log.msg, log.error, log.stacktrace);
  }

  @override
  void _i({final String? msg, Log? log}) {
    log ??= Log(msg: msg);
    assert(StringUtils.instance.isNotBlank(log.msg));
    _logger.i(log.msg, null, log.stacktrace);
  }

  @override
  void _v({final String? msg, Log? log}) {
    log ??= Log(msg: msg);
    assert(StringUtils.instance.isNotBlank(log.msg));
    _logger.v(log.msg);
  }

  @override
  void _w({final String? msg, Log? log}) {
    log ??= Log(msg: msg);
    assert(StringUtils.instance.isNotBlank(log.msg));
    _logger.w(log.msg, null, log.stacktrace);
  }

  @override
  void log(Log log) {
    switch (log.logLevel) {
      case LogLevel.info:
        _i(log: log);
        break;
      case LogLevel.debug:
        _d(log: log);
        break;
      case LogLevel.warning:
        _w(log: log);
        break;
      default:
        _e(log: log);
    }

    _addToHistory(log);
  }

  void _addToHistory(Log log) async {
    history.add(log);

    // TODO - have the below max length come from a configs
    if (history.length >= 10) history.removeFirst();
  }
}
