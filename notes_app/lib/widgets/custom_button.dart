import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 15),
      onPressed: onPressed,
      minWidth: MediaQuery.of(context).size.width,
      color: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      splashColor: kPrimarySplashColor,
      child: const Text(
        'Add',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}
