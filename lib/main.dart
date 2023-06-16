import 'package:database_client/database_client.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:settings_repository/settings_repository.dart';

import 'app/view/app.dart';
import 'boostrap.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = DatabaseClient.defaultDatabaseFile(dbFolder.path);
    final databaseClient = DatabaseClient(file);
    final settingsRepository =
        SettingsRepository(databaseClient.settingsResource);
    final settings = await settingsRepository.settings().first;

    return App(
      initialSettings: settings,
      settingsRepository: settingsRepository,
    );
  });
}
