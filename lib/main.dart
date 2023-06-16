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
    final settings = await settingsRepository.settings().first;
    final historyLogRepository =
        HistoryLogRepository(databaseClient.historyLogDao);

    return App(
      initialSettings: settings,
      settingsRepository: settingsRepository,
      historyLogRepository: historyLogRepository,
    );
  });
}
