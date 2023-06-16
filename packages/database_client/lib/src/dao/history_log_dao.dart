import 'dart:async';
import 'package:drift/drift.dart';
import '../../database_client.dart';
import '../tables/history_log_table.dart';

part 'history_log_dao.g.dart';

@DriftAccessor(tables: [HistoryLog])
class HistoryLogDao extends DatabaseAccessor<DatabaseClient>
    with _$HistoryLogDaoMixin {
  final DatabaseClient database;

  HistoryLogDao(this.database) : super(database);

  Stream<List<HistoryLogEntry>> historyLogEntries() {
    final query = select(historyLog);
    return query.watch();
  }

  Future<int> saveHistoryLog(HistoryLogCompanion companion) async {
    print('inserting');
    return await into(historyLog).insert(companion, mode: InsertMode.replace);
  }

  Future<void> clearLogs() async {
    delete(historyLog).go();
  }
}
