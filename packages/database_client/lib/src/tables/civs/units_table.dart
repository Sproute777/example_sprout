
import 'package:drift/drift.dart';

import 'buildings_table.dart';
import 'civs_table.dart';

@DataClassName('UnitEntry')
class Units extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  IntColumn get attack => integer().nullable()(); 
  IntColumn get health => integer().nullable()(); 
  IntColumn get speed => integer().nullable()(); 

  IntColumn get civ => integer().nullable().references(Civs, #id)();
  IntColumn get home => integer().nullable().references(Buildings, #id)();
}