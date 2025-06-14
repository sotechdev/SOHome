import 'package:dio/dio.dart';

class Constants {
  static const encryptionKeyName = 'hive_encryption_key';
  static const authDbName = 'auth_db';
}

Dio getHttpClient() {
  return Dio();
}
