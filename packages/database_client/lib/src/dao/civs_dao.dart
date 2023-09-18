import 'package:drift/drift.dart';
import '../database_client.dart';
import '../tables/tables.dart';

part 'civs_dao.g.dart';

@DriftAccessor(tables: [Civs, Buildings, Heroes, Units, Dresses])
class CivsDao extends DatabaseAccessor<DatabaseClient> with _$CivsDaoMixin {
  final DatabaseClient database;

  CivsDao(this.database) : super(database);
}
