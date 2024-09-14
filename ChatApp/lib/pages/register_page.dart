// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_snackbar.dart';
import '../components/custom_textfield.dart';
import '../services/register.dart';
import 'login_page.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  // ممكن متعملهوش استاتك لكن كده عشان ت access
  // ليها لازم تاخد anonymous object
  // ف انت ممكن تحل ده عن طريق انك تخليه Static

  static String id = 'RegisterPage';

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const Spacer(
              //   flex: 2,
              // ),
              const SizedBox(height: 75),
              const Image(
                image: AssetImage('assets/images/scholar.png'),
                height: 100,
              ),
              const Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              // const Spacer(
              //   flex: 2,
              // ),
              const SizedBox(height: 160),
              const Row(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomTextField(
                onChanged: (userData) => email = userData.replaceAll(' ', ''),
                hintText: 'Email',
                suffixIcon: Icons.email,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                onChanged: (userData) => password = userData,
                hintText: 'Password',
                suffixIcon: Icons.password,
              ),
              const SizedBox(height: 25),
              CustomButton(
                  label: 'Register',
                  onPressed: () async {
                    try {
                      await registerUser();
                      showSnackBar(
                        context: context,
                        textEXC: 'Account created successfully',
                        icon: Icons.check_circle,
                        color: Colors.green,
                      );
                      Future.delayed(const Duration(seconds: 1), () {
                        Navigator.pushNamed(context, LoginPage.id);
                      });
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(
                            context: context,
                            textEXC: 'The password provided is too weak.',
                            icon: Icons.error,
                            color: Colors.red);
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(
                          context: context,
                          textEXC: 'The account already exists for that email.',
                          icon: Icons.error,
                          color: Colors.red,
                        );
                      } else if (e.code == 'invalid-email') {
                        showSnackBar(
                          context: context,
                          textEXC: 'The email is badly formatted.',
                          icon: Icons.error,
                          color: Colors.red,
                        );
                      } else {
                        showSnackBar(
                            context: context,
                            textEXC: 'Account created successfully',
                            icon: Icons.check_circle,
                            color: Colors.green);
                      }
                    } catch (e) {
                      log(e.toString());
                      showSnackBar(
                        context: context,
                        textEXC: e.toString(),
                        icon: Icons.error,
                        color: Colors.red,
                      );
                    }
                  }),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  // const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFC7EDE6),
                      ),
                    ),
                  )
                ],
              ),
              // const Spacer(
              //   flex: 3,
              // ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> registerUser() async {
  //   UserCredential user;
  //   user = await FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: email!, password: password!);
  //   log(user.user!.email.toString());
  // }
}
