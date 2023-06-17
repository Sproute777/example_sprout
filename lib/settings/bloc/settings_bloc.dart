import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show ThemeMode, debugPrint;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:history_log_repository/history_log.dart';
import 'package:settings_repository/settings_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _settingsRepository;
  final HistoryLogRepository _historyLogRepository;

  SettingsBloc(
    SettingsRepository settingsRepository,
    HistoryLogRepository historyLogRepository,
  )   : _settingsRepository = settingsRepository,
        _historyLogRepository = historyLogRepository,
        super(const SettingsState.loaded()) {
    on<SettingsEvent>(
      (event, emit) => event.map<Future<void>>(
          clearHistoryLog: (event) => _onClearHistoryLog(event, emit),
          subscription: (event) => _onSubscriptionRequires(event, emit),
          subscriptionHistory: (event) =>
              _onSubscriptionHistoryRequires(event, emit),
          toggle: (event) => _onToggle(event, emit)),
      transformer: concurrent(),
    );
  }

  Future<void> _onClearHistoryLog(
      _ClearHistoryLog event, Emitter<SettingsState> emit) async {
    try {
      await _historyLogRepository.clear().timeout(const Duration(seconds: 1));
    } catch (error) {
      addError(error);
      emit(SettingsState.failure(
          themeMode: state.themeMode, historyLogs: state.historyLogs));
    }
  }

  Future<void> _onSubscriptionRequires(
      _SubscriptionEvent event, Emitter<SettingsState> emit) async {
    await emit.onEach<List<HistoryLogEntry>>(_historyLogRepository.logs(),
        onData: (logs) => emit(state.copyWith(historyLogs: logs)),
        onError: (error, _) {
          addError(error);
        });
  }

  Future<void> _onSubscriptionHistoryRequires(
      _SubscriptionHistoryEvent event, Emitter<SettingsState> emit) async {
    await emit.onEach<Settings>(_settingsRepository.settings(),
        onData: (settings) => state.fromSettings(settings),
        onError: (error, _) {
          addError(error);
        });
  }

  Future<void> _onToggle(
      _ToggleSettingsEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(themeMode: event.themeMode));
    try {
      await _settingsRepository
          .saveSettings(state.toSettings())
          .timeout(const Duration(seconds: 1));
      await _historyLogRepository
          .saveLog('SettingsCubit toggleTheme() ${event.themeMode}')
          .timeout(const Duration(seconds: 1));
    } on TimeoutException {
      addError(TimeoutException('timeout 1 second'));
      emit(SettingsState.failure(
          themeMode: state.themeMode, historyLogs: state.historyLogs));
    } catch (error) {
      addError(error);
      emit(SettingsState.failure(
          themeMode: state.themeMode, historyLogs: state.historyLogs));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
