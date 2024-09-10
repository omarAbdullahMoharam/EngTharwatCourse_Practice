import 'package:flutter/material.dart';

import '../components/custom_textfield.dart';
import '../components/custom_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Image(
              image: AssetImage('assets/images/scholar.png'),
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
            const Spacer(
              flex: 2,
            ),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Sign In',
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
                const CustomButton(),
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
                      onPressed: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
