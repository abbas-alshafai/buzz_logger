import 'dart:collection';


import 'package:buzz_utils/buzz_utils.dart';
import 'package:logger/logger.dart';

import '../models/log.dart';

class LoggerServiceFactory {
  LoggerServiceFactory._();

  static final LoggerServiceFactory instance = LoggerServiceFactory._();

  LogService getLogger({
    businessErrors = false,
    businessInfos = false,
    businessWarnings = false,
  }) {
    return _LogServiceImpl(
      // repo: LogRepoFactory.instance.getRepo(),
      businessErrors: businessErrors,
      businessInfos: businessInfos,
      businessWarnings: businessWarnings,
    );
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
  // final LogRepo repo;
  final bool businessErrors;
  final bool businessInfos;
  final bool businessWarnings;

  Queue<Log> history = Queue();

  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 10,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  _LogServiceImpl({
    // required this.repo,
    this.businessErrors = false,
    this.businessInfos = false,
    this.businessWarnings = false,
  });

  @override
  void _d({Log? log}) {
    _logger.d(log?.msg, null, log?.stacktrace);
  }

  @override
  void _e({final String? msg, Log? log}) {
    log ??= Log(msg: msg);

    assert(StringUtils.instance.isNotBlank(log.msg));
    _logger.e(log.msg, null, log.stacktrace);

    // TODO
    // log.historyMessages = this
    //     .history
    //     .where((l) => StringUtils.instance.isNotBlank(l.msg))
    //     .map((l) => LogMessage(
    //           msg: l.msg!,
    //           actionCode: l.userAction,
    //         ))
    //     .toList();

    // if (log.uid != null && businessErrors && !log.bypassRepoInsertion)
    //   repo.add(log);
  }

  @override
  void _i({final String? msg, Log? log}) {
    log ??= Log(msg: msg);

    assert(StringUtils.instance.isNotBlank(log.msg));

    _logger.i(log.msg, null, log.stacktrace);

    // if (log.uid != null && businessInfos && !log.bypassRepoInsertion)
    //   repo.add(log);
  }

  @override
  void _v({final String? msg, Log? log}) {
    log ??= Log(msg: msg);

    assert(StringUtils.instance.isNotBlank(log.msg));

    log = _buildLog(log);

    _logger.v(log.msg);
  }

  @override
  void _w({final String? msg, Log? log}) {
    log ??= Log(msg: msg);

    assert(StringUtils.instance.isNotBlank(log.msg));

    _logger.w(log.msg, null, log.stacktrace);

    // if (log.uid != null && businessWarnings && !log.bypassRepoInsertion)
    //   repo.add(log);
  }

  @override
  void log(Log log) {
    log = _buildLog(log);

    switch (log.logLevel) {
      case LogLevel.INFO:
        _i(log: log);
        break;
      case LogLevel.DEBUG:
        _d(log: log);
        break;
      case LogLevel.WARNING:
        _w(log: log);
        break;
      default:
        _e(log: log);
    }

    addToHistory(log);
  }

  Log _buildLog(Log log) {
    // TODO
    // if (ListUtils.instance.isEmpty(log.logMessages)) log.logMessages = [];

    if (StringUtils.instance.isBlank(log.msg)) return log;

    // log.logMessages!.add(LogMessage(msg: log.msg!));

    return log;
  }

  void addToHistory(Log log) async {
    history.add(log);

    // TODO - have the below max length come from the country configs
    if (history.length >= 10) history.removeFirst();
  }
}
