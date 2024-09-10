// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
  });
  final String hintText;
  final IconData suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        labelText: hintText,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.white,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
