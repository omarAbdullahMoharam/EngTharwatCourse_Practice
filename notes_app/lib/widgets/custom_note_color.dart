import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class CustomNoteColor extends StatelessWidget {
  const CustomNoteColor({super.key, required this.colorIndex});
  final int colorIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 42,
          backgroundColor: colorPallet[colorIndex],
        ),
      ),
    );
  }
}
