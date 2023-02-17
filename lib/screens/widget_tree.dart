import 'package:uptime/screens/auth.dart';
import 'package:uptime/screens/authpage.dart';
import 'package:uptime/screens/login_register_page.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return AuthPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
