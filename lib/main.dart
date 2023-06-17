import 'package:bloc/bloc.dart';
import 'package:database_client/database_client.dart';
import 'package:flutter/material.dart';
import 'package:history_log_repository/history_log.dart';
import 'package:path_provider/path_provider.dart';
import 'package:settings_repository/settings_repository.dart';

import 'app/view/app.dart';
import 'boostrap.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final databaseClient = DatabaseClient();
    final settingsRepository = SettingsRepository(databaseClient.settingsDao);
    final historyLogRepository =
        HistoryLogRepository(databaseClient.historyLogDao);
    Bloc.observer = AppBlocObserver();
    return App(
      settingsRepository: settingsRepository,
      historyLogRepository: historyLogRepository,
    );
  });
}
