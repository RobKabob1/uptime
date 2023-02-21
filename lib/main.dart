import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uptime/providers/loginauthprovider.dart';
import 'package:uptime/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAlv1IYkxu9tmYotytakEV5UQfr0MX5wx8",
      appId: "1:302903695246:web:4a88eb6912efb9a725f6df",
      messagingSenderId: "302903695246",
      projectId: "demoscreens2",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => LoginAuthProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        routerConfig: router1,
      ),
    );
  }
}
