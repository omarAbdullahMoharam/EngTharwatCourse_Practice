import 'package:firebase_auth/firebase_auth.dart';

import 'dart:developer';

String? email;
String? password;
Future<void> loginUser({email, password}) async {
  UserCredential user;
  user = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email!, password: password!);
  log(user.user!.email.toString());
  log(password.toString());
}
