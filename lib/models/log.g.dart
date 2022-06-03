// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogCWProxy {
  Log logLevel(LogLevel logLevel);

  Log msg(String? msg);

  Log stacktrace(StackTrace? stacktrace);

  Log translationKey(String? translationKey);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Log(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Log(...).copyWith(id: 12, name: "My name")
  /// ````
  Log call({
    LogLevel? logLevel,
    String? msg,
    StackTrace? stacktrace,
    String? translationKey,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLog.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLog.copyWith.fieldName(...)`
class _$LogCWProxyImpl implements _$LogCWProxy {
  final Log _value;

  const _$LogCWProxyImpl(this._value);

  @override
  Log logLevel(LogLevel logLevel) => this(logLevel: logLevel);

  @override
  Log msg(String? msg) => this(msg: msg);

  @override
  Log stacktrace(StackTrace? stacktrace) => this(stacktrace: stacktrace);

  @override
  Log translationKey(String? translationKey) =>
      this(translationKey: translationKey);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Log(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Log(...).copyWith(id: 12, name: "My name")
  /// ````
  Log call({
    Object? logLevel = const $CopyWithPlaceholder(),
    Object? msg = const $CopyWithPlaceholder(),
    Object? stacktrace = const $CopyWithPlaceholder(),
    Object? translationKey = const $CopyWithPlaceholder(),
  }) {
    return Log(
      logLevel: logLevel == const $CopyWithPlaceholder() || logLevel == null
          ? _value.logLevel
          // ignore: cast_nullable_to_non_nullable
          : logLevel as LogLevel,
      msg: msg == const $CopyWithPlaceholder()
          ? _value.msg
          // ignore: cast_nullable_to_non_nullable
          : msg as String?,
      stacktrace: stacktrace == const $CopyWithPlaceholder()
          ? _value.stacktrace
          // ignore: cast_nullable_to_non_nullable
          : stacktrace as StackTrace?,
      translationKey: translationKey == const $CopyWithPlaceholder()
          ? _value.translationKey
          // ignore: cast_nullable_to_non_nullable
          : translationKey as String?,
    );
  }
}

extension $LogCopyWith on Log {
  /// Returns a callable class that can be used as follows: `instanceOfLog.copyWith(...)` or like so:`instanceOfLog.copyWith.fieldName(...)`.
  _$LogCWProxy get copyWith => _$LogCWProxyImpl(this);
}
