import 'package:drift/drift.dart';

import 'civs_table.dart';

@DataClassName('DressEntry')
class Dresses extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  IntColumn get healmet => integer().nullable()();
  IntColumn get body => integer().nullable()();
  IntColumn get leftHand => integer().nullable()();
  IntColumn get rightHand => integer().nullable()();
  IntColumn get boots => integer().nullable()();

  IntColumn get civ => integer().nullable().references(Civs, #id)();
}

