import 'package:drift/drift.dart';

import 'civs_table.dart';

@DataClassName('HeroEntry')
class Heroes extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  IntColumn get leading => integer().nullable()();
  IntColumn get slots => integer().nullable()();
  IntColumn get dress => integer().nullable()();

  IntColumn get civ => integer().nullable().references(Civs, #id)();
}

