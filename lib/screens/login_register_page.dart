import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uptime/providers/loginauthprovider.dart';
import 'package:uptime/widgets/entry_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<LoginAuthProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EntryField(title: 'email', controller: appState.controllerEmail),
            EntryField(
              title: 'password',
              controller: appState.controllerPassword,
            ),
            Text(appState.errorMessage == ''
                ? ''
                : 'Humm ? $appState.errorMessage'),
            ElevatedButton(
              onPressed: () => appState.isLogin
                  ? appState.signInWithEmailAndPassword()
                  : appState.createUserWithEmailAndPassword(),
              child: Text(appState.isLogin ? 'Login' : 'Register'),
            ),
            TextButton(
              onPressed: () => appState.loginPressed(),
              child:
                  Text(appState.isLogin ? 'Register instead' : 'Login instead'),
            ),
          ],
        ),
      ),
    );
  }
}
