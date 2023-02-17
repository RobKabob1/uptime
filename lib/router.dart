import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uptime/screens/homepage.dart';
import 'package:uptime/screens/widget_tree.dart';
import 'package:uptime/screens/servers.dart';
import 'package:uptime/screens/accountsetup.dart';

final GoRouter router1 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WidgetTree();
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
