import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uptime/screens/servers.dart';
import 'package:uptime/screens/serversetup.dart';

final GoRouter router1 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Servers(
          title: 'Servers',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'serversetup',
          builder: (BuildContext context, GoRouterState state) {
            return const ServerSetup(title: 'ServerSetup');
          },
        ),
      ],
    ),
  ],
);
