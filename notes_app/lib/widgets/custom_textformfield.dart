import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });

  final void Function(String?)? onSaved;
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Field is Required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      enabled: true,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
          fontSize: 18,
        ),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
            width: 2,
          ),
        ),
      ),
      maxLines: maxLines,
    );
  }
}
