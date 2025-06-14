import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:logging/logging.dart';
import 'package:sohome_client/app/app.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  await _setupHive();

  _setupLogging();

  runApp(await builder());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    log(
      record.message,
      time: record.time,
      level: record.level.value,
      name: record.loggerName,
      error: record.error,
      stackTrace: record.stackTrace,
    );
  });
}

Future<void> _setupHive() async {
  await Hive.initFlutter();
  const secureStorage = FlutterSecureStorage();
  final keyString = await secureStorage.read(key: Constants.encryptionKeyName);

  late List<int> encryptionKey;
  if (keyString == null) {
    encryptionKey = Hive.generateSecureKey();
    await secureStorage.write(
      key: Constants.encryptionKeyName,
      value: base64Url.encode(encryptionKey),
    );
  } else {
    encryptionKey = base64Url.decode(keyString);
  }

  await Hive.openBox<String>(
    Constants.authDbName,
    encryptionCipher: HiveAesCipher(encryptionKey),
  );
}
