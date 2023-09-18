
import 'package:drift/drift.dart';

import 'civs_table.dart';


@DataClassName('BuildingEntry')
class Buildings extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();

  IntColumn get civ => integer().nullable().references(Civs, #id)();
}



