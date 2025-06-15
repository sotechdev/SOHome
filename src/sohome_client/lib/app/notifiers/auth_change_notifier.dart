import 'package:flutter/material.dart';
import 'package:sohome_client/login/login.dart';

class AuthChangeNotifier extends ChangeNotifier {
  AuthChangeNotifier({required this.loginCubit}) {
    loginCubit.stream.listen((state) => notifyListeners());
  }
  final LoginCubit loginCubit;
}
