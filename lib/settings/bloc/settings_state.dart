part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState.loaded({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(<HistoryLogEntry>[]) List<HistoryLogEntry> historyLogs,
  }) = _SettingsState;

  const factory SettingsState.failure({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(<HistoryLogEntry>[]) List<HistoryLogEntry> historyLogs,
  }) = FailureSettingsState;

  Settings toSettings() {
    return Settings(themeModeIndex: themeMode.index);
  }

  SettingsState fromSettings(Settings settings) => copyWith(
        themeMode: ThemeMode.values[settings.themeModeIndex],
      );
}
