import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uptime/utilities/auth.dart';

class LoginAuthProvider extends ChangeNotifier {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  String? errorMessage = '';
  bool isLogin = false;

  //getter method
  TextEditingController get controllerEmail => _controllerEmail;
  TextEditingController get controllerPassword => _controllerPassword;

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message;
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message;
    }
  }

  void loginPressed() {
    isLogin = !isLogin;
  }
}
