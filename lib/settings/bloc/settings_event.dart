part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();

  const factory SettingsEvent.subscription() = _SubscriptionEvent;

  const factory SettingsEvent.subscriptionHistory() = _SubscriptionHistoryEvent;

  const factory SettingsEvent.clearHistoryLog() = _ClearHistoryLog;

  const factory SettingsEvent.toggle(ThemeMode themeMode) =
      _ToggleSettingsEvent;
}
