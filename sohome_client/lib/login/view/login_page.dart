import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sohome_client/app/app.dart' show getAppBar;
import 'package:sohome_client/login/login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Autenticação'),
      body: Center(
        child: BlocBuilder<LoginCubit, LoginState>(builder: _buildChildWidget),
      ),
    );
  }

  Widget _buildChildWidget(BuildContext context, LoginState state) {
    if (state is LoginLoading) {
      return const CircularProgressIndicator();
    }
    return ElevatedButton(onPressed: _doLogin, child: const Text('Entrar'));
  }

  void _doLogin() {
    context.read<LoginCubit>().signIn();
  }
}
