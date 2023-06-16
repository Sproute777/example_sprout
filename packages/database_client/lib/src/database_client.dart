// ignore_for_file: public_member_api_docs

import 'package:drift/drift.dart';
import 'connect/connection.dart' as impl;
import 'dao/history_log_dao.dart';
import 'dao/settings_dao.dart';
import 'dao/user_dao.dart';
import 'tables/tables.dart';

part 'database_client.g.dart';

/// {@template database_implementation}
/// Package connecting to the local database
/// {@endtemplate}
@DriftDatabase(
  tables: [
    User,
    Address,
    Company,
    Settings,
    HistoryLog,
  ],
  daos: const [
    UserDao,
    SettingsDao,
    HistoryLogDao,
  ],
)
class DatabaseClient extends _$DatabaseClient {
  DatabaseClient() : super(impl.connect());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // if (from < 2) {
        //   // we added the [SettingsEntryModel]
        //   await m.createTable(settings);
        // }
        //
      },
    );
  }
}
