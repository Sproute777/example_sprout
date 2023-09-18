
import 'package:database_client/database_client.dart';

class CivsRepository {
  CivsRepository({required CivsDao  dao}) : _dao = dao;
  final CivsDao _dao;
}