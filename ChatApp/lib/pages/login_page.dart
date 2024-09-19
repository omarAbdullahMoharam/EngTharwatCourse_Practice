// ignore_for_file: use_build_context_synchronously

import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../components/custom_snackbar.dart';
import '../components/custom_textFormField.dart';
import '../components/custom_button.dart';
import '../services/login.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  static String id = 'Login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  bool _isloading = false;
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isloading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: key,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Login',
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
                      CustomTextFormField(
                        onChanged: (userData) => email = userData,
                        hintText: 'Email',
                        suffixIcon: Icons.email,
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        onChanged: (userData) => password = userData,
                        hintText: 'Password',
                        suffixIcon: Icons.password,
                      ),
                      const SizedBox(height: 25),
                      CustomButton(
                        label: 'Sign In',
                        onPressed: () async {
                          if (key.currentState!.validate()) {
                            setState(() {
                              _isloading = true;
                            });
                            try {
                              await loginUser(
                                email: email!,
                                password: password!,
                              );
                              setState(() {
                                _isloading = false;
                              });

                              showSnackBar(
                                context: context,
                                textEXC: 'Logged in successfully',
                                icon: Icons.check_circle,
                                color: Colors.green,
                              );

                              Future.delayed(const Duration(seconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatPage(),
                                  ),
                                );
                              });
                            } on FirebaseAuthException catch (e) {
                              setState(() {
                                _isloading = false;
                              });

                              if (e.code == 'user-not-found') {
                                showSnackBar(
                                  context: context,
                                  textEXC: 'No user found for that email.',
                                  icon: Icons.error,
                                  color: Colors.red,
                                );
                              } else if (e.code == 'wrong-password') {
                                showSnackBar(
                                  context: context,
                                  textEXC:
                                      'Wrong password provided for that user.',
                                  icon: Icons.error,
                                  color: Colors.red,
                                );
                              } else if (e.code == 'invalid-email') {
                                showSnackBar(
                                  context: context,
                                  textEXC:
                                      'Please enter a valid email address.',
                                  icon: Icons.error,
                                  color: Colors.red,
                                );
                              } else {
                                showSnackBar(
                                  context: context,
                                  textEXC:
                                      'Wrong Email or password provided for that user.',
                                  icon: Icons.error,
                                  color: Colors.red,
                                );
                              }
                            }
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Dont\'t have an account?',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          // const Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, RegisterPage.id);
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFC7EDE6),
                              ),
                            ),
                          )
                        ],
                      ),
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
        ),
      ),
    );
  }
}
