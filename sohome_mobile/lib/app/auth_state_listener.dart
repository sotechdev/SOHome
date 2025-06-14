import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sohome_client/home/home.dart';
import 'package:sohome_client/login/login.dart';

class AuthStateListener extends StatelessWidget {
  const AuthStateListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      builder: _buildWidget,
      listener: _buildListener,
    );
  }

  Widget _buildWidget(BuildContext context, LoginState state) {
    return switch (state) {
      AuthenticatedState() => const HomePage(),
      UnauthenticatedState() => const LoginPage(),
      LoginError() => const LoginPage(),
      _ => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    };
  }

  void _buildListener(BuildContext context, LoginState state) {
    if (state is LoginError) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(
        SnackBar(
          content: Text(state.message),
        ),
      );
    }
  }
}
