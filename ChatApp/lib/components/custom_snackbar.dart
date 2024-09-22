import 'package:flutter/material.dart';

void showSnackBar(
    {required BuildContext context,
    required String textEXC,
    required IconData icon,
    required Color color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Expanded(
            child: Text(
              textEXC,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Spacer(),
          Icon(icon, color: color),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 29, 35, 72),
      duration: const Duration(milliseconds: 700),
    ),
  );
}
