import 'package:database_client/database_client.dart';
import 'package:drift/drift.dart';

/// {@template settings_repository}
/// Repository accessing the settings
/// {@endtemplate}
class HistoryLogRepository {
  const HistoryLogRepository(HistoryLogDao historyLogDao)
      : _historyLogDao = historyLogDao;

  final HistoryLogDao _historyLogDao;

  Stream<List<HistoryLogEntry>> logs() {
    return _historyLogDao.historyLogEntries();
  }

  Future<void> clear() {
    return _historyLogDao.clearLogs();
  }

  Future<void> saveLog(String name) {
    return _historyLogDao.saveHistoryLog(
      HistoryLogCompanion(
        date: Value(DateTime.now()),
        name: Value(name),
      ),
    );
  }
}
