import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uptime/firebase_options.dart';
import 'package:uptime/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://ozatwuhxjipzjhxmveug.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im96YXR3dWh4amlwempoeG12ZXVnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzg0Njg4MjAsImV4cCI6MTk5NDA0NDgyMH0.0NFlFDTXzOQSqDQuIIfbsC8Oz_aSlgaUlPcFrKAICBM",
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routerConfig: router1,
    );
  }
}
