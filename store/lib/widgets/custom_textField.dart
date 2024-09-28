// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.prefix,
    required this.onChanged,
    this.inputType,
  });
  Function(String)? onChanged;
  final String prefix;
  final String hintText;
  final TextInputType? inputType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.prefix,
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 250,
          child: TextField(
            onChanged: widget.onChanged,
            keyboardType: widget.inputType,
            cursorColor: Colors.black,
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: GoogleFonts.kadwa(
                fontSize: 22,
              ),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
