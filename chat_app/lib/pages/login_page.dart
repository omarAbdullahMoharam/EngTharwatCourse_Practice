import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/custom_textfield.dart';
import '../components/custom_button.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  static String id = 'Login';
  const LoginPage({super.key});

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
              const SizedBox(
                height: 75,
              ),
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
              const SizedBox(
                height: 160,
              ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hintText: 'Email',
                    suffixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hintText: 'Password',
                    suffixIcon: Icons.password,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomButton(label: 'Sign In'),
                  const SizedBox(
                    height: 10,
                  ),
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
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
