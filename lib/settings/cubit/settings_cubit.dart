import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings_repository/settings_repository.dart';

part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(
      SettingsRepository settingsRepository, Settings inititalSettings)
      : _settingsRepository = settingsRepository,
        _initialSettings = inititalSettings,
        super(const SettingsState());

  final Settings _initialSettings;
  final SettingsRepository _settingsRepository;
  StreamSubscription<Settings>? _listener;

  void init() {
    _listener = _settingsRepository.settings().listen((event) {
      emit(SettingsState.fromSettings(event));
    });
  }

  void toggleTheme(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
    _settingsRepository.saveSettings(state.toSettings());
  }

  @override
  Future<void> close() {
    _listener?.cancel();
    return super.close();
  }
}

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState(
      {@Default(ThemeMode.system) ThemeMode themeMode}) = _SettingsState;

  Settings toSettings() {
    return Settings(themeModeIndex: themeMode.index);
  }

  static SettingsState fromSettings(Settings settings) => SettingsState(
        themeMode: ThemeMode.values[settings.themeModeIndex],
      );
}
