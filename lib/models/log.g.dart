// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogCWProxy {
  Log bypassRepoInsertion(bool bypassRepoInsertion);

  Log logLevel(dynamic logLevel);

  Log msg(String? msg);

  Log obj(Object? obj);

  Log stacktrace(StackTrace? stacktrace);

  Log table(String? table);

  Log translationKey(String? translationKey);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Log(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Log(...).copyWith(id: 12, name: "My name")
  /// ````
  Log call({
    bool? bypassRepoInsertion,
    dynamic? logLevel,
    String? msg,
    Object? obj,
    StackTrace? stacktrace,
    String? table,
    String? translationKey,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLog.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLog.copyWith.fieldName(...)`
class _$LogCWProxyImpl implements _$LogCWProxy {
  final Log _value;

  const _$LogCWProxyImpl(this._value);

  @override
  Log bypassRepoInsertion(bool bypassRepoInsertion) =>
      this(bypassRepoInsertion: bypassRepoInsertion);

  @override
  Log logLevel(dynamic logLevel) => this(logLevel: logLevel);

  @override
  Log msg(String? msg) => this(msg: msg);

  @override
  Log obj(Object? obj) => this(obj: obj);

  @override
  Log stacktrace(StackTrace? stacktrace) => this(stacktrace: stacktrace);

  @override
  Log table(String? table) => this(table: table);

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
    Object? bypassRepoInsertion = const $CopyWithPlaceholder(),
    Object? logLevel = const $CopyWithPlaceholder(),
    Object? msg = const $CopyWithPlaceholder(),
    Object? obj = const $CopyWithPlaceholder(),
    Object? stacktrace = const $CopyWithPlaceholder(),
    Object? table = const $CopyWithPlaceholder(),
    Object? translationKey = const $CopyWithPlaceholder(),
  }) {
    return Log(
      bypassRepoInsertion:
          bypassRepoInsertion == const $CopyWithPlaceholder() ||
                  bypassRepoInsertion == null
              ? _value.bypassRepoInsertion
              // ignore: cast_nullable_to_non_nullable
              : bypassRepoInsertion as bool,
      logLevel: logLevel == const $CopyWithPlaceholder() || logLevel == null
          ? _value.logLevel
          // ignore: cast_nullable_to_non_nullable
          : logLevel as dynamic,
      msg: msg == const $CopyWithPlaceholder()
          ? _value.msg
          // ignore: cast_nullable_to_non_nullable
          : msg as String?,
      obj: obj == const $CopyWithPlaceholder()
          ? _value.obj
          // ignore: cast_nullable_to_non_nullable
          : obj as Object?,
      stacktrace: stacktrace == const $CopyWithPlaceholder()
          ? _value.stacktrace
          // ignore: cast_nullable_to_non_nullable
          : stacktrace as StackTrace?,
      table: table == const $CopyWithPlaceholder()
          ? _value.table
          // ignore: cast_nullable_to_non_nullable
          : table as String?,
      translationKey: translationKey == const $CopyWithPlaceholder()
          ? _value.translationKey
          // ignore: cast_nullable_to_non_nullable
          : translationKey as String?,
    );
  }
}

extension $LogCopyWith on Log {
  /// Returns a callable class that can be used as follows: `instanceOfclass Log.name.copyWith(...)` or like so:`instanceOfclass Log.name.copyWith.fieldName(...)`.
  _$LogCWProxy get copyWith => _$LogCWProxyImpl(this);
}
