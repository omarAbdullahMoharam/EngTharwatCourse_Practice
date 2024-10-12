import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import 'custom_note_color.dart';

class ScrollableColorsPallet extends StatelessWidget {
  const ScrollableColorsPallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorPallet.length,
        itemBuilder: (context, index) {
          return CustomNoteColor(colorIndex: index);
        },
      ),
    );
  }
}
