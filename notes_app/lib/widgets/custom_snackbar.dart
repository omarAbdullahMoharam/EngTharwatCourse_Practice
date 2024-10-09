import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required String message,
  required IconData icon,
  required Color color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(),
          Icon(icon, color: color),
        ],
      ),
      backgroundColor: Colors.black,
      duration: const Duration(milliseconds: 3000),
    ),
  );
}
