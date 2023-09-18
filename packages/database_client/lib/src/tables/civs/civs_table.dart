import 'package:drift/drift.dart';

@DataClassName('CivEntry')
class Civs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
}


