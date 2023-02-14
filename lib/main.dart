import 'package:flutter/material.dart';
import 'package:uptime/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router1,
      debugShowCheckedModeBanner: false,
      title: 'Uptime',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}
