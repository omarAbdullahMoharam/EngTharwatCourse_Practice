import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

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
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: 'Email',
                suffixIcon: Icons.email,
              ),
              // const CustomTextField(
              //   hintText: 'Email',
              //   suffixIcon: Icons.email,
              // ),
              // const CustomTextField(
              //   hintText: 'Email',
              //   suffixIcon: Icons.email,
              // ),
              // const CustomTextField(
              //   hintText: 'Email',
              //   suffixIcon: Icons.email,
              // ),
              // const CustomTextField(
              //   hintText: 'Email',
              //   suffixIcon: Icons.email,
              // ),
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
              const CustomButton(label: 'Register'),
              const SizedBox(
                height: 10,
              ),
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
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
