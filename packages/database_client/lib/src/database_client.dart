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
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
     return MigrationStrategy(
      onCreate: (m) async{
           await m.createAll();
      },
           beforeOpen: (details) async {
        // Make sure that foreign keys are enabled
        await customStatement('PRAGMA foreign_keys = ON');

        if (details.wasCreated) {
          // Create a bunch of default values so the app doesn't look too empty
          // on the first start.
          await batch((b) {
            
        });
        }
        // This follows the recommendation to validate that the database schema
        // matches what drift expects (https://drift.simonbinder.eu/docs/advanced-features/migrations/#verifying-a-database-schema-at-runtime).
        // It allows catching bugs in the migration logic early.
        // await impl.validateDatabaseSchema(this);
      },
    );
  }
}
