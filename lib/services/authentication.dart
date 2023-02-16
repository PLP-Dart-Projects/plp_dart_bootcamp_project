import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../components/homepage.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUpWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var user = result.user;
      // ignore: avoid_print
      print('User created with email: ${user?.email}');
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      );
    } catch (e) {
      // ignore: avoid_print
      print('Error creating user: $e');
    }
  }

  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      var result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      var user = result.user;
      // ignore: avoid_print
      print('Signed in with email: ${user?.email}');
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    } catch (e) {
      // ignore: avoid_print
      print('Error signing in: $e');
    }
  }
}
