import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

String? email;
String? password;

Future<void> registerUser() async {
  UserCredential user;
  user = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email!, password: password!);
  log(user.user!.email.toString());
}
