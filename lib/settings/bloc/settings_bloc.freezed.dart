// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() subscriptionHistory,
    required TResult Function() clearHistoryLog,
    required TResult Function(ThemeMode themeMode) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? subscriptionHistory,
    TResult? Function()? clearHistoryLog,
    TResult? Function(ThemeMode themeMode)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? subscriptionHistory,
    TResult Function()? clearHistoryLog,
    TResult Function(ThemeMode themeMode)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscription,
    required TResult Function(_SubscriptionHistoryEvent value)
        subscriptionHistory,
    required TResult Function(_ClearHistoryLog value) clearHistoryLog,
    required TResult Function(_ToggleSettingsEvent value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscription,
    TResult? Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult? Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult? Function(_ToggleSettingsEvent value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscription,
    TResult Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult Function(_ToggleSettingsEvent value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SubscriptionEventCopyWith<$Res> {
  factory _$$_SubscriptionEventCopyWith(_$_SubscriptionEvent value,
          $Res Function(_$_SubscriptionEvent) then) =
      __$$_SubscriptionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscriptionEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SubscriptionEvent>
    implements _$$_SubscriptionEventCopyWith<$Res> {
  __$$_SubscriptionEventCopyWithImpl(
      _$_SubscriptionEvent _value, $Res Function(_$_SubscriptionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubscriptionEvent extends _SubscriptionEvent {
  const _$_SubscriptionEvent() : super._();

  @override
  String toString() {
    return 'SettingsEvent.subscription()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubscriptionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() subscriptionHistory,
    required TResult Function() clearHistoryLog,
    required TResult Function(ThemeMode themeMode) toggle,
  }) {
    return subscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? subscriptionHistory,
    TResult? Function()? clearHistoryLog,
    TResult? Function(ThemeMode themeMode)? toggle,
  }) {
    return subscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? subscriptionHistory,
    TResult Function()? clearHistoryLog,
    TResult Function(ThemeMode themeMode)? toggle,
    required TResult orElse(),
  }) {
    if (subscription != null) {
      return subscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscription,
    required TResult Function(_SubscriptionHistoryEvent value)
        subscriptionHistory,
    required TResult Function(_ClearHistoryLog value) clearHistoryLog,
    required TResult Function(_ToggleSettingsEvent value) toggle,
  }) {
    return subscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscription,
    TResult? Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult? Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult? Function(_ToggleSettingsEvent value)? toggle,
  }) {
    return subscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscription,
    TResult Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult Function(_ToggleSettingsEvent value)? toggle,
    required TResult orElse(),
  }) {
    if (subscription != null) {
      return subscription(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEvent extends SettingsEvent {
  const factory _SubscriptionEvent() = _$_SubscriptionEvent;
  const _SubscriptionEvent._() : super._();
}

/// @nodoc
abstract class _$$_SubscriptionHistoryEventCopyWith<$Res> {
  factory _$$_SubscriptionHistoryEventCopyWith(
          _$_SubscriptionHistoryEvent value,
          $Res Function(_$_SubscriptionHistoryEvent) then) =
      __$$_SubscriptionHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscriptionHistoryEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SubscriptionHistoryEvent>
    implements _$$_SubscriptionHistoryEventCopyWith<$Res> {
  __$$_SubscriptionHistoryEventCopyWithImpl(_$_SubscriptionHistoryEvent _value,
      $Res Function(_$_SubscriptionHistoryEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubscriptionHistoryEvent extends _SubscriptionHistoryEvent {
  const _$_SubscriptionHistoryEvent() : super._();

  @override
  String toString() {
    return 'SettingsEvent.subscriptionHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionHistoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() subscriptionHistory,
    required TResult Function() clearHistoryLog,
    required TResult Function(ThemeMode themeMode) toggle,
  }) {
    return subscriptionHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? subscriptionHistory,
    TResult? Function()? clearHistoryLog,
    TResult? Function(ThemeMode themeMode)? toggle,
  }) {
    return subscriptionHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? subscriptionHistory,
    TResult Function()? clearHistoryLog,
    TResult Function(ThemeMode themeMode)? toggle,
    required TResult orElse(),
  }) {
    if (subscriptionHistory != null) {
      return subscriptionHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscription,
    required TResult Function(_SubscriptionHistoryEvent value)
        subscriptionHistory,
    required TResult Function(_ClearHistoryLog value) clearHistoryLog,
    required TResult Function(_ToggleSettingsEvent value) toggle,
  }) {
    return subscriptionHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscription,
    TResult? Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult? Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult? Function(_ToggleSettingsEvent value)? toggle,
  }) {
    return subscriptionHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscription,
    TResult Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult Function(_ToggleSettingsEvent value)? toggle,
    required TResult orElse(),
  }) {
    if (subscriptionHistory != null) {
      return subscriptionHistory(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionHistoryEvent extends SettingsEvent {
  const factory _SubscriptionHistoryEvent() = _$_SubscriptionHistoryEvent;
  const _SubscriptionHistoryEvent._() : super._();
}

/// @nodoc
abstract class _$$_ClearHistoryLogCopyWith<$Res> {
  factory _$$_ClearHistoryLogCopyWith(
          _$_ClearHistoryLog value, $Res Function(_$_ClearHistoryLog) then) =
      __$$_ClearHistoryLogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearHistoryLogCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_ClearHistoryLog>
    implements _$$_ClearHistoryLogCopyWith<$Res> {
  __$$_ClearHistoryLogCopyWithImpl(
      _$_ClearHistoryLog _value, $Res Function(_$_ClearHistoryLog) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearHistoryLog extends _ClearHistoryLog {
  const _$_ClearHistoryLog() : super._();

  @override
  String toString() {
    return 'SettingsEvent.clearHistoryLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearHistoryLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() subscriptionHistory,
    required TResult Function() clearHistoryLog,
    required TResult Function(ThemeMode themeMode) toggle,
  }) {
    return clearHistoryLog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? subscriptionHistory,
    TResult? Function()? clearHistoryLog,
    TResult? Function(ThemeMode themeMode)? toggle,
  }) {
    return clearHistoryLog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? subscriptionHistory,
    TResult Function()? clearHistoryLog,
    TResult Function(ThemeMode themeMode)? toggle,
    required TResult orElse(),
  }) {
    if (clearHistoryLog != null) {
      return clearHistoryLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscription,
    required TResult Function(_SubscriptionHistoryEvent value)
        subscriptionHistory,
    required TResult Function(_ClearHistoryLog value) clearHistoryLog,
    required TResult Function(_ToggleSettingsEvent value) toggle,
  }) {
    return clearHistoryLog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscription,
    TResult? Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult? Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult? Function(_ToggleSettingsEvent value)? toggle,
  }) {
    return clearHistoryLog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscription,
    TResult Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult Function(_ToggleSettingsEvent value)? toggle,
    required TResult orElse(),
  }) {
    if (clearHistoryLog != null) {
      return clearHistoryLog(this);
    }
    return orElse();
  }
}

abstract class _ClearHistoryLog extends SettingsEvent {
  const factory _ClearHistoryLog() = _$_ClearHistoryLog;
  const _ClearHistoryLog._() : super._();
}

/// @nodoc
abstract class _$$_ToggleSettingsEventCopyWith<$Res> {
  factory _$$_ToggleSettingsEventCopyWith(_$_ToggleSettingsEvent value,
          $Res Function(_$_ToggleSettingsEvent) then) =
      __$$_ToggleSettingsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_ToggleSettingsEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_ToggleSettingsEvent>
    implements _$$_ToggleSettingsEventCopyWith<$Res> {
  __$$_ToggleSettingsEventCopyWithImpl(_$_ToggleSettingsEvent _value,
      $Res Function(_$_ToggleSettingsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_ToggleSettingsEvent(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ToggleSettingsEvent extends _ToggleSettingsEvent {
  const _$_ToggleSettingsEvent(this.themeMode) : super._();

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsEvent.toggle(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleSettingsEvent &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleSettingsEventCopyWith<_$_ToggleSettingsEvent> get copyWith =>
      __$$_ToggleSettingsEventCopyWithImpl<_$_ToggleSettingsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() subscriptionHistory,
    required TResult Function() clearHistoryLog,
    required TResult Function(ThemeMode themeMode) toggle,
  }) {
    return toggle(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? subscriptionHistory,
    TResult? Function()? clearHistoryLog,
    TResult? Function(ThemeMode themeMode)? toggle,
  }) {
    return toggle?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? subscriptionHistory,
    TResult Function()? clearHistoryLog,
    TResult Function(ThemeMode themeMode)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscription,
    required TResult Function(_SubscriptionHistoryEvent value)
        subscriptionHistory,
    required TResult Function(_ClearHistoryLog value) clearHistoryLog,
    required TResult Function(_ToggleSettingsEvent value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscription,
    TResult? Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult? Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult? Function(_ToggleSettingsEvent value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscription,
    TResult Function(_SubscriptionHistoryEvent value)? subscriptionHistory,
    TResult Function(_ClearHistoryLog value)? clearHistoryLog,
    TResult Function(_ToggleSettingsEvent value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _ToggleSettingsEvent extends SettingsEvent {
  const factory _ToggleSettingsEvent(final ThemeMode themeMode) =
      _$_ToggleSettingsEvent;
  const _ToggleSettingsEvent._() : super._();

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$_ToggleSettingsEventCopyWith<_$_ToggleSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  List<HistoryLogEntry> get historyLogs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ThemeMode themeMode, List<HistoryLogEntry> historyLogs)
        loaded,
    required TResult Function(
            ThemeMode themeMode, List<HistoryLogEntry> historyLogs)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        loaded,
    TResult? Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        loaded,
    TResult Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsState value) loaded,
    required TResult Function(FailureSettingsState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsState value)? loaded,
    TResult? Function(FailureSettingsState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsState value)? loaded,
    TResult Function(FailureSettingsState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({ThemeMode themeMode, List<HistoryLogEntry> historyLogs});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? historyLogs = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      historyLogs: null == historyLogs
          ? _value.historyLogs
          : historyLogs // ignore: cast_nullable_to_non_nullable
              as List<HistoryLogEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, List<HistoryLogEntry> historyLogs});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? historyLogs = null,
  }) {
    return _then(_$_SettingsState(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      historyLogs: null == historyLogs
          ? _value._historyLogs
          : historyLogs // ignore: cast_nullable_to_non_nullable
              as List<HistoryLogEntry>,
    ));
  }
}

/// @nodoc

class _$_SettingsState extends _SettingsState {
  const _$_SettingsState(
      {this.themeMode = ThemeMode.system,
      final List<HistoryLogEntry> historyLogs = const <HistoryLogEntry>[]})
      : _historyLogs = historyLogs,
        super._();

  @override
  @JsonKey()
  final ThemeMode themeMode;
  final List<HistoryLogEntry> _historyLogs;
  @override
  @JsonKey()
  List<HistoryLogEntry> get historyLogs {
    if (_historyLogs is EqualUnmodifiableListView) return _historyLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyLogs);
  }

  @override
  String toString() {
    return 'SettingsState.loaded(themeMode: $themeMode, historyLogs: $historyLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            const DeepCollectionEquality()
                .equals(other._historyLogs, _historyLogs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode,
      const DeepCollectionEquality().hash(_historyLogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ThemeMode themeMode, List<HistoryLogEntry> historyLogs)
        loaded,
    required TResult Function(
            ThemeMode themeMode, List<HistoryLogEntry> historyLogs)
        failure,
  }) {
    return loaded(themeMode, historyLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        loaded,
    TResult? Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        failure,
  }) {
    return loaded?.call(themeMode, historyLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        loaded,
    TResult Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(themeMode, historyLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsState value) loaded,
    required TResult Function(FailureSettingsState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsState value)? loaded,
    TResult? Function(FailureSettingsState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsState value)? loaded,
    TResult Function(FailureSettingsState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {final ThemeMode themeMode,
      final List<HistoryLogEntry> historyLogs}) = _$_SettingsState;
  const _SettingsState._() : super._();

  @override
  ThemeMode get themeMode;
  @override
  List<HistoryLogEntry> get historyLogs;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureSettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$FailureSettingsStateCopyWith(_$FailureSettingsState value,
          $Res Function(_$FailureSettingsState) then) =
      __$$FailureSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, List<HistoryLogEntry> historyLogs});
}

/// @nodoc
class __$$FailureSettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$FailureSettingsState>
    implements _$$FailureSettingsStateCopyWith<$Res> {
  __$$FailureSettingsStateCopyWithImpl(_$FailureSettingsState _value,
      $Res Function(_$FailureSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? historyLogs = null,
  }) {
    return _then(_$FailureSettingsState(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      historyLogs: null == historyLogs
          ? _value._historyLogs
          : historyLogs // ignore: cast_nullable_to_non_nullable
              as List<HistoryLogEntry>,
    ));
  }
}

/// @nodoc

class _$FailureSettingsState extends FailureSettingsState {
  const _$FailureSettingsState(
      {this.themeMode = ThemeMode.system,
      final List<HistoryLogEntry> historyLogs = const <HistoryLogEntry>[]})
      : _historyLogs = historyLogs,
        super._();

  @override
  @JsonKey()
  final ThemeMode themeMode;
  final List<HistoryLogEntry> _historyLogs;
  @override
  @JsonKey()
  List<HistoryLogEntry> get historyLogs {
    if (_historyLogs is EqualUnmodifiableListView) return _historyLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyLogs);
  }

  @override
  String toString() {
    return 'SettingsState.failure(themeMode: $themeMode, historyLogs: $historyLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureSettingsState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            const DeepCollectionEquality()
                .equals(other._historyLogs, _historyLogs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode,
      const DeepCollectionEquality().hash(_historyLogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureSettingsStateCopyWith<_$FailureSettingsState> get copyWith =>
      __$$FailureSettingsStateCopyWithImpl<_$FailureSettingsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ThemeMode themeMode, List<HistoryLogEntry> historyLogs)
        loaded,
    required TResult Function(
            ThemeMode themeMode, List<HistoryLogEntry> historyLogs)
        failure,
  }) {
    return failure(themeMode, historyLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        loaded,
    TResult? Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        failure,
  }) {
    return failure?.call(themeMode, historyLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        loaded,
    TResult Function(ThemeMode themeMode, List<HistoryLogEntry> historyLogs)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(themeMode, historyLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsState value) loaded,
    required TResult Function(FailureSettingsState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsState value)? loaded,
    TResult? Function(FailureSettingsState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsState value)? loaded,
    TResult Function(FailureSettingsState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureSettingsState extends SettingsState {
  const factory FailureSettingsState(
      {final ThemeMode themeMode,
      final List<HistoryLogEntry> historyLogs}) = _$FailureSettingsState;
  const FailureSettingsState._() : super._();

  @override
  ThemeMode get themeMode;
  @override
  List<HistoryLogEntry> get historyLogs;
  @override
  @JsonKey(ignore: true)
  _$$FailureSettingsStateCopyWith<_$FailureSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
