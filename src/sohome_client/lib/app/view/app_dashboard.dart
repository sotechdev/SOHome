import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sohome_client/data/entities/user.dart';
import 'package:sohome_client/login/login.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({
    required this.title,
    this.child,
    this.builder,
    this.actions = const [],
    super.key,
  }) : assert(
         builder != null || child != null,
         'Either builder or child must be provided',
       );

  final Widget Function(BuildContext context, User user)? builder;
  final Widget? child;
  final String title;
  final List<Widget> actions;

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {
  @override
  Widget build(BuildContext context) {
    final loginState = context.watch<LoginCubit>().state;
    if (loginState is! AuthenticatedState) {
      return const SizedBox.shrink();
    }
    final user = loginState.user;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              context.read<LoginCubit>().signOut();
            },
            icon: const Icon(Icons.logout),
          ),
          ...widget.actions,
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    user.email,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Página Inicial'),
              onTap: () => _navigateTo(context, '/'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _getBody(context, user),
    );
  }

  void _navigateTo(BuildContext context, String routeName) {
    if (ModalRoute.of(context)?.settings.name != routeName) {
      Navigator.pushNamed(context, routeName);
    } else {
      Navigator.pop(context);
    }
  }

  Widget _getBody(BuildContext context, User user) {
    if (widget.builder != null) {
      return widget.builder!(context, user);
    }
    if (widget.child != null) {
      return widget.child!;
    }
    return const Center(child: Text('Content not available'));
  }
}
