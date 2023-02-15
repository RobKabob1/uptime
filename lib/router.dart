import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uptime/screens/homepage.dart';
import 'package:uptime/screens/servers.dart';
import 'package:uptime/screens/serversetup.dart';

final GoRouter router1 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home(
          title: 'Home',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'serversetup',
          builder: (BuildContext context, GoRouterState state) {
            return const ServerSetup(title: 'ServerSetup');
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
