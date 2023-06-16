import 'package:drift/drift.dart';

@DataClassName('HistoryLogEntry')
class HistoryLog extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get date => dateTime()();
  TextColumn get name => text()();
}
