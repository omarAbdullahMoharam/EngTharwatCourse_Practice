import 'package:flutter/material.dart';

import 'pages/login_page.dart';
import 'pages/register_page.dart';

void main() {
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'LoginPage': (context) => const Login(),
        'RegisterPage': (context) => const RegisterPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}
