import 'package:dio/dio.dart';

class Constants {
  static const encryptionKeyName = 'hive_encryption_key';
  static const authDbName = 'auth_db';

  static final routes = _Routes();
}

Dio getHttpClient() {
  return Dio();
}

class _Routes {
  final home = '/';
  final dashboard = '/dashboard';
  final login = '/login';
  final settings = '/settings';
  final profile = '/profile';
}
