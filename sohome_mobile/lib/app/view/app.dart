import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sohome_client/app/app.dart';
import 'package:sohome_client/app/auth_state_listener.dart';
import 'package:sohome_client/data/entities/open_id_client_configuration.dart';
import 'package:sohome_client/data/repositories/auth_repository.dart';
import 'package:sohome_client/l10n/l10n.dart';
import 'package:sohome_client/login/cubit/login_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(
        clientConfiguration: const OpenIdClientConfiguration(
          serverUrl: AppEnv.keycloakUrl,
          realm: AppEnv.keycloakRealm,
          clientId: AppEnv.keycloakClientId,
        ),
      ),
      child: BlocProvider(
        create: (context) => LoginCubit(
          authRepository: RepositoryProvider.of<AuthRepository>(context),
        )..checkAuthStatus(),
        child: MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            useMaterial3: true,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const AuthStateListener(),
        ),
      ),
    );
  }
}
