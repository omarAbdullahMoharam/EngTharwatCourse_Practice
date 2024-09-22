import 'package:firebase_auth/firebase_auth.dart';

import 'dart:developer';

// ignore: unused_element
String? loginEmail;
String? _password;
Future<void> loginUser({email, password}) async {
  UserCredential user;
  user = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email!, password: password!);
  log(user.user!.email.toString());
  log(_password.toString());
}
