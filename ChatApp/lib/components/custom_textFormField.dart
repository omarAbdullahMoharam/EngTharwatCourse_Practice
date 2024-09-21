// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.email,
    this.password,
    required this.onChanged,
    this.obsecure = false,
  });
  final String? email;
  final String? password;
  final String hintText;
  final IconData suffixIcon;
  bool? obsecure;
  Function(String userData) onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecure!,
      validator: (input) {
        if (input!.isEmpty) {
          return 'Please enter your ${widget.hintText}';
        }
        return null;
      },
      onChanged: widget.onChanged,
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white, fontSize: 18),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        labelText: widget.hintText,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        suffixIcon: IconButton(
          icon: Icon(widget.suffixIcon),
          color: Colors.white,
          onPressed: () {
            setState(() {
              widget.obsecure = !widget.obsecure!;
            });
          },
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
