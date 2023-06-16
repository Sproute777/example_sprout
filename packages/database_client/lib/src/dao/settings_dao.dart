import 'dart:async';
import 'package:drift/drift.dart';
import '../../database_client.dart';
import '../tables/history_log_table.dart';
import '../tables/tables.dart';

part 'settings_dao.g.dart';

@DriftAccessor(tables: [Settings])
class SettingsDao extends DatabaseAccessor<DatabaseClient>
    with _$SettingsDaoMixin {
  final DatabaseClient database;

  SettingsDao(this.database) : super(database);

  Stream<Map<String, String>> settingsEntries() {
    final query = select(settings);
    return query.watch().map(
          (event) => {for (final v in event) v.key: v.value},
        );
  }

  /// Saves the specified key and value Map into [SettingsEntry] table
  ///
  ///  If the insert would violate a primary key or uniqueness
  /// constraint, updates the columns that are present on given entry.
  Future<void> saveSettings(Map<String, String> settings) async {
    for (final setting in settings.entries) {
      await into(database.settings).insertOnConflictUpdate(
        SettingsEntry(key: setting.key, value: setting.value),
      );
    }
  }

  Future<void> clearSettings() async {
    delete(settings).go();
  }
}
