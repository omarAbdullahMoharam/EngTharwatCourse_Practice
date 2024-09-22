// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../components/custom_button.dart';
import '../components/custom_snackbar.dart';
import '../components/custom_textFormField.dart';
import '../services/register.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  // ممكن متعملهوش استاتك لكن كده عشان ت access
  // ليها لازم تاخد anonymous object
  // ف انت ممكن تحل ده عن طريق انك تخليه Static

  static String id = 'RegisterPage';

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  String? localEmail;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formKey,
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
                  CustomTextFormField(
                    onChanged: (userData) {
                      email = userData.replaceAll(' ', '');
                      localEmail = email;
                    },
                    hintText: 'Email',
                    suffixIcon: Icons.email,
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (userData) => password = userData,
                    hintText: 'Password',
                    suffixIcon: Icons.password,
                    iconType: true,
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                      label: 'Register',
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            _isLoading = true;
                          });
                          // formKey.currentState!.save();
                          try {
                            await registerUser();

                            showSnackBar(
                              context: context,
                              textEXC: 'Account created successfully',
                              icon: Icons.check_circle,
                              color: Colors.green,
                            );

                            Future.delayed(const Duration(milliseconds: 500),
                                () {
                              Navigator.pushNamed(
                                context,
                                ChatPage.id,
                                arguments: localEmail,
                              );
                              setState(() {
                                _isLoading = false;
                              });
                            });
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              showSnackBar(
                                context: context,
                                textEXC: 'The password provided is too weak.',
                                icon: Icons.error,
                                color: Colors.red,
                              );
                            } else if (e.code == 'email-already-in-use') {
                              showSnackBar(
                                context: context,
                                textEXC:
                                    'The account already exists for that email.',
                                icon: Icons.error,
                                color: Colors.red,
                              );
                            } else if (e.code == 'invalid-email') {
                              showSnackBar(
                                context: context,
                                textEXC: 'Please enter a valid email address.',
                                icon: Icons.error,
                                color: Colors.red,
                              );
                            } else {
                              log(e.toString());
                            }
                            setState(() {
                              _isLoading = false;
                            });
                          }
                        }
                        // on Exception catch (e) {
                        //   log(e.toString());
                        //   showSnackBar(
                        //     context: context,
                        //     textEXC: e.toString(),
                        //     icon: Icons.error,
                        //     color: Colors.red,
                        //   );
                        // }
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
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            _isLoading = false;
                          });
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
