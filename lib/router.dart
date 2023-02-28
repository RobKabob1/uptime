import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uptime/auth/auth_gate.dart';
import 'package:uptime/screens/servers.dart';
import 'package:uptime/screens/account_setup.dart';

final GoRouter router1 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AuthGate();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'serversetup',
          builder: (BuildContext context, GoRouterState state) {
            return const AccountSetup(title: 'AccountSetup');
          },
        ),
        GoRoute(
          path: 'servers',
          builder: (BuildContext context, GoRouterState state) {
            return const Servers(title: 'Servers');
          },
        ),
      ],
    ),
  ],
);
