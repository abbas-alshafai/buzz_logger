import 'package:copy_with_extension/copy_with_extension.dart';

part 'log.g.dart';

@CopyWith()
class Log {
  String? msg;
  // List<LogMessage>? messages;
  String? translationKey;
  // List<LogMessage>? historyMessages;
  String? userAction;
  String? table;
  StackTrace? stacktrace;
  Object? obj;
  LogLevel? logLevel;
  bool bypassRepoInsertion;


  // TODO add every msg to messages list
  Log({
    this.translationKey, // TODO
    this.msg,
    // List<LogMessage>? logMessages,
    // List<LogMessage>? historyMessages,
    this.stacktrace,
    this.table,
    this.obj,
    this.bypassRepoInsertion = false,
    logLevel = LogLevel.INFO,
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
    this.table,
    this.obj,
    this.userAction,
    this.bypassRepoInsertion = false,
    // List<LogMessage>? logMessages,
    // List<LogMessage>? historyMessages,
  })  : logLevel = LogLevel.INFO;

  // warning
  Log.w({
    this.translationKey,
    this.msg,
    this.stacktrace,
    this.table,
    this.obj,
    this.userAction,
    this.bypassRepoInsertion = false,
    // List<LogMessage>? logMessages,
    // List<LogMessage>? historyMessages,
  })  : logLevel = LogLevel.WARNING;

  // debug
  Log.d({
    this.translationKey,
    this.msg,
    this.stacktrace,
    this.table,
    this.obj,
    this.userAction,
    this.bypassRepoInsertion = false,
    // List<LogMessage>? logMessages,
    // List<LogMessage>? historyMessages,
  })  : logLevel = LogLevel.DEBUG;

  // error
  Log.e(
    this.msg, {
    this.translationKey,
    this.stacktrace,
    this.table,
    this.obj,
    this.userAction,
    this.bypassRepoInsertion = false,
    // List<LogMessage>? logMessages,
    // List<LogMessage>? historyMessages,
  })  : logLevel = LogLevel.ERROR;

  // @override
  // String toString() {
  //   String logErr = StringUtils.empty; // TODO
  //
  //   if (StringUtils.instance.isNotBlank(msg)) logErr = logErr + "\nmsg: $msg";
  //
  //   if (StringUtils.instance.isNotBlank(stacktrace?.toString()))
  //     logErr = logErr + "\nstackTrace: ${stacktrace.toString()}";
  //
  //   return logErr;
  // }

  // @override
  // Map<String, dynamic> toJson() {
  //   var json = {
  //     // DbConstants.createdOn: this.createdOnTimestamp ?? DbUtils.instance.getServerTime(),
  //
  //     if (StringUtils.instance.isNotBlank(msg)) DbConstants.message: msg,
  //
  //     if (ListUtils.instance.isNotEmpty(logMessages))
  //       DbConstants.errorMessages: logMessages,
  //
  //     if (StringUtils.instance.isNotBlank(uid)) DbConstants.user: uid,
  //
  //     if (StringUtils.instance.isNotBlank(email)) DbConstants.email: email,
  //
  //     if (StringUtils.instance.isNotBlank(country))
  //       DbConstants.country: country,
  //
  //     if (StringUtils.instance.isNotBlank(city)) DbConstants.city: city,
  //
  //     if (StringUtils.instance.isNotBlank(businessId))
  //       DbConstants.business: businessId,
  //
  //     if (StringUtils.instance.isNotBlank(locationId))
  //       DbConstants.location: locationId,
  //
  //     if (StringUtils.instance.isNotBlank(productId))
  //       DbConstants.product: productId,
  //
  //     if (StringUtils.instance.isNotBlank(table)) DbConstants.collection: table,
  //
  //     if (StringUtils.instance.isNotBlank(stacktrace?.toString()))
  //       DbConstants.stacktrace: stacktrace.toString(),
  //
  //     if (logLevel != null) DbConstants.level: getLogLevel(logLevel!),
  //
  //     if (ListUtils.instance.isNotEmpty(messages))
  //       for (LogMessage logMsg in messages!)
  //         DbConstants.message: logMsg.toJson(),
  //
  //     if (ListUtils.instance.isNotEmpty(historyMessages))
  //       for (LogMessage logMsg in historyMessages!)
  //         DbConstants.history: logMsg.toJson(),
  //   };
  //
  //   return json;
  // }


  // bool containsLogMessage(String msgCode) {
  //   if (ListUtils.instance.isEmpty(logMessages)) return false;
  //
  //   for (String? code in logMessages!.map((e) => e.actionCode).toList())
  //     if (msgCode == code) return true;
  //
  //   return false;
  // }
}

enum LogLevel { INFO, DEBUG, WARNING, ERROR }

// String getLogLevel(LogLevel level) {
//   switch (level) {
//     case LogLevel.WARNING:
//       return DbConstants.warning;
//     case LogLevel.ERROR:
//       return DbConstants.error;
//     case LogLevel.INFO:
//       return DbConstants.info;
//     default:
//       return DbConstants.debug;
//   }
// }
