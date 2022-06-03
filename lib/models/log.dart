import 'package:copy_with_extension/copy_with_extension.dart';

part 'log.g.dart';

@CopyWith()
class Log {
  
  final String? msg;
  
  /// Use this if you would like to display a message from a translation file 
  /// on the UI, where [msg] can be used for logging purposes 
  final String? translationKey;
  
  final StackTrace? stacktrace;
  final LogLevel logLevel;

  Log({
    this.translationKey,
    this.msg,
    this.stacktrace,
    this.logLevel = LogLevel.info,
  }) ;


  factory Log.empty() => Log();
  factory Log.add() => Log();
  factory Log.fromJson(Map<String, Object?>? data) {
    if(data == null){
      return Log.empty();
    }
    return Log();
  }
  
  // info
  Log.i(
    this.msg, {
    this.translationKey,
    this.stacktrace,
  }) : logLevel = LogLevel.info;

  // warning
  Log.w({
    this.translationKey,
    this.msg,
    this.stacktrace,
  })  : logLevel = LogLevel.warning;

  // debug
  Log.d({
    this.translationKey,
    this.msg,
    this.stacktrace,
  })  : logLevel = LogLevel.debug;

  // error
  Log.e(
    this.msg, {
    this.translationKey,
    this.stacktrace,
  })  : logLevel = LogLevel.error;
}

enum LogLevel { info, debug, warning, error }
