import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:go_router/go_router.dart';

class AccountSetup extends StatelessWidget {
  const AccountSetup({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreen(
        actions: [
          SignedOutAction((context) {
            GoRoute(
              path: '/',
            );
          })
        ],
        children: const [
          Divider(),
          Padding(
            padding: EdgeInsets.all(2),
          ),
        ],
      ),
    );
  }
}
