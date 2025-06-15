import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sohome_client/app/app.dart';
import 'package:sohome_client/app/notifiers/auth_change_notifier.dart';
import 'package:sohome_client/home/home.dart';
import 'package:sohome_client/login/login.dart';

GoRouter appRoutes(AuthChangeNotifier authNotifier, LoginCubit loginCubit) =>
    GoRouter(
      initialLocation: Constants.routes.home,
      refreshListenable: authNotifier,
      routes: <RouteBase>[
        GoRoute(
          path: Constants.routes.home,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: Constants.routes.login,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
      ],
      redirect: (context, state) {
        final isAuthenticated = loginCubit.state is AuthenticatedState;
        final isLoginPage = state.uri.path == Constants.routes.login;

        if (!isAuthenticated && !isLoginPage) {
          return Constants.routes.login;
        }
        if (isAuthenticated && isLoginPage) {
          return Constants.routes.home;
        }
        return null;
      },
      errorBuilder: (context, state) {
        return Scaffold(
          body: Center(
            child: Text('Error: ${state.error}'),
          ),
        );
      },
    );
