import 'package:database_client/database_client.dart';
import 'package:drift/drift.dart';

/// {@template settings_repository}
/// Repository accessing the settings
/// {@endtemplate}
class HistoryLogRepository {
  const HistoryLogRepository(this.historyLogDao);
  final HistoryLogDao historyLogDao;

  Stream<List<HistoryLogEntry>> logs() {
    return historyLogDao.historyLogEntries();
  }

  Future<void> clear() {
    return historyLogDao.clearLogs();
  }

  Future<void> saveLog(String name) {
    return historyLogDao.saveHistoryLog(
      HistoryLogCompanion(
        date: Value(DateTime.now()),
        name: Value(name),
      ),
    );
  }
}
