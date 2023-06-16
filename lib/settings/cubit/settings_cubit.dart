import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_client/database_client.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:history_log_repository/history_log.dart';
import 'package:settings_repository/settings_repository.dart';

part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(SettingsRepository settingsRepository,
      HistoryLogRepository historyLogRepository, Settings inititalSettings)
      : _settingsRepository = settingsRepository,
        _historyLogRepository = historyLogRepository,
        _initialSettings = inititalSettings,
        super(const SettingsState());

  final Settings _initialSettings;
  final SettingsRepository _settingsRepository;
  final HistoryLogRepository _historyLogRepository;
  StreamSubscription<Settings>? _listenerSettings;
  StreamSubscription<List<HistoryLogEntry>>? _listenerHistroryLog;

  void init() {
    _listenerSettings = _settingsRepository.settings().listen((event) {
      emit(state.fromSettings(event));
    });
    _listenerHistroryLog = _historyLogRepository.logs().listen((event) {
      emit(state.copyWith(historyLogs: event));
    });
  }

  void toggleTheme(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
    unawaited(_settingsRepository.saveSettings(state.toSettings()));
    unawaited(_historyLogRepository
        .saveLog('SettingsCubit toggleTheme() $themeMode'));
  }

  @override
  Future<void> close() {
    unawaited(_historyLogRepository.clear());
    _listenerSettings?.cancel();
    _listenerHistroryLog?.cancel();
    return super.close();
  }
}

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(<HistoryLogEntry>[]) List<HistoryLogEntry> historyLogs,
  }) = _SettingsState;

  Settings toSettings() {
    return Settings(themeModeIndex: themeMode.index);
  }

  SettingsState fromSettings(Settings settings) => copyWith(
        themeMode: ThemeMode.values[settings.themeModeIndex],
      );
}
