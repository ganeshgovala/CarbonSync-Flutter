// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Authservice {
  final _auth = FirebaseAuth.instance;

  // login
  Future<UserCredential> login(String email, String password) async {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
}