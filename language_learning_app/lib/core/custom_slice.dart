import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSlice extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CustomSlice({this.text, this.color});
  String? text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 70,
      width: double.infinity,
      color: color,
      alignment: Alignment.centerLeft,
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
