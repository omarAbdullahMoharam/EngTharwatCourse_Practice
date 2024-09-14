// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.email,
    this.password,
    required this.onChanged,
  });
  final String? email;
  final String? password;
  final String hintText;
  final IconData suffixIcon;

  Function(String userData) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white, fontSize: 18),
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
